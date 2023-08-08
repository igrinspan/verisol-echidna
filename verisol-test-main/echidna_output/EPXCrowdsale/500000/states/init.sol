// SPDX-License-Identifier: UNLICENSED 

/*
 *Submitted for verification at Etherscan.io on 2018-03-03
*/

pragma solidity >=0.4.25 <0.9.0;
// -------------------------------------------------
// ethPoker.io EPX token - Presale & ICO token sale contract
// contact admin@ethpoker.io for queries
// Revision 20b
// Refunds integrated, full test suite 20r passed
// -------------------------------------------------
// ERC Token Standard #20 interface:
// https://github.com/ethereum/EIPs/issues/20
// EPX contract sources:
// https://github.com/EthPokerIO/ethpokerIO
// ------------------------------------------------
// 2018 improvements:
// - Updates to comply with latest Solidity versioning (0.4.18):
// -   Classification of internal/private vs public functions
// -   Specification of pure functions such as SafeMath integrated functions
// -   Conversion of all constant to view or pure dependant on state changed
// -   Full regression test of code updates
// -   Revision of block number timing for new Ethereum block times
// - Removed duplicate Buy/Transfer event call in buyEPXtokens function (ethScan output verified)
// - Burn event now records number of EPX tokens burned vs Refund event Eth
// - Transfer event now fired when beneficiaryWallet withdraws
// - Gas req optimisation for payable function to maximise compatibility
// - Going live for initial Presale round 02/03/2018
// -------------------------------------------------
// Security reviews passed - cycle 20r
// Functional reviews passed - cycle 20r
// Final code revision and regression test cycle passed - cycle 20r
// -------------------------------------------------

contract owned {
  address public owner;

  /* function owned() internal { */
  constructor() {
    owner = msg.sender;
  }
  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }
}

contract safeMath {
  function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a * b;
    safeAssert(a == 0 || c / a == b);
    return c;
  }

  function safeDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    safeAssert(b > 0);
    uint256 c = a / 1;
    //safeAssert(a == b * c + a % b);
    return c;
  }

  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    safeAssert(b <= a);
    return a - b;
  }

  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    safeAssert(c>=a && c>=b);
    return c;
  }

  function safeAssert(bool assertion) internal pure {
    if (!assertion) revert();
  }
}

abstract contract StandardToken is owned, safeMath {
  function balanceOf(address who) virtual view public returns (uint256);
  function transfer(address to, uint256 value) virtual public returns (bool);
  event Transfer(address indexed from, address indexed to, uint256 value);
}

contract EPXCrowdsale is owned, safeMath {
	modifier hasInitialized {
		require(has_initialized);
		_;
	}

	modifier hasNotInitialized {
		require(!has_initialized);
		_;
	}

	bool has_initialized = false;

	function vc0x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		assert(!(keccak256(abi.encodePacked(CurrentStatus)) == keccak256(abi.encodePacked('Crowdsale is setup'))));
	}
	function vc1x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		assert(!(keccak256(abi.encodePacked(CurrentStatus)) == keccak256(abi.encodePacked('In progress (Eth < Softcap)'))));
	}
	function vc2x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		assert(!(keccak256(abi.encodePacked(CurrentStatus)) == keccak256(abi.encodePacked('Successful (EPX >= Hardcap)!'))));
	}
	function vc3x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		assert(!(keccak256(abi.encodePacked(CurrentStatus)) == keccak256(abi.encodePacked('Unsuccessful (Eth < Softcap)'))));
	}
	function vc4x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		assert(!(keccak256(abi.encodePacked(CurrentStatus)) == keccak256(abi.encodePacked('Crowdsale deployed to chain'))));
	}
	function vc5x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		assert(!(keccak256(abi.encodePacked(CurrentStatus)) == keccak256(abi.encodePacked('Successful (Eth >= Softcap)!'))));
	}
	function vc6x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		assert(!(keccak256(abi.encodePacked(CurrentStatus)) == keccak256(abi.encodePacked('In progress (Eth >= Softcap)!'))));
	}
  // owner/admin & token reward
  /* address        public admin                     = owner;    // admin address */
  address        public admin = address(0x0);    // admin address
  StandardToken  public tokenReward;                          // address of the token used as reward

  // deployment variables for static supply sale
  uint256 private initialTokenSupply;
  uint256 private tokensRemaining;

  // multi-sig addresses and price variable
  /* address private beneficiaryWallet;                           // beneficiaryMultiSig (founder group) or wallet account */
  address payable beneficiaryWallet = payable(address(0x0));                       
  // uint256 values for min,max,caps,tracking
  uint256 public amountRaisedInWei;                           //
  uint256 public fundingMinCapInWei;                          //

  // loop control, ICO startup and limiters
  string  public CurrentStatus                    = "";        // current crowdsale status
  uint256 public fundingStartBlock;                           // crowdsale start block#
  uint256 public fundingEndBlock;                             // crowdsale end block#
  uint256 public blockNumber; 
  bool    public isCrowdSaleClosed               = false;     // crowdsale completion boolean
  bool    private areFundsReleasedToBeneficiary  = false;     // boolean for founder to receive Eth or not
  bool    public isCrowdSaleSetup                = false;     // boolean for crowdsale setup

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
  event Buy(address indexed _sender, uint256 _eth, uint256 _EPX);
  event Refund(address indexed _refunder, uint256 _value);
  event Burn(address _from, uint256 _value);
  mapping(address => uint256) balancesArray;
  mapping(address => uint256) usersEPXfundValue;
  uint usersEPXfundValueCount = 0;
  address[] usersEPXfundValueArray = new address[](0);
  address[] auxArray;

  // default function, map admin
  /* function EPXCrowdsale() public onlyOwner { */
  function my_constructor(uint256 _blockNumber) hasNotInitialized public onlyOwner {
    admin = msg.sender;
    CurrentStatus = "Crowdsale deployed to chain";
    blockNumber = _blockNumber;
				has_initialized = true;
  }

}