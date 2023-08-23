/**
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
  constructor() internal {
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

contract StandardToken is owned, safeMath {
  function balanceOf(address who) view public returns (uint256);
  function transfer(address to, uint256 value) public returns (bool);
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

	function vc7x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) hasInitialized payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
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
  address payable beneficiaryWallet = address(0x0);                       
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

  // total number of tokens initially
  function initialEPXSupply() hasInitialized public view returns (uint256 initialEPXtokenCount) {
    return safeDiv(initialTokenSupply,uint256(1)); // div by 10,000 for display normalisation (4 decimals)
  }

  // remaining number of tokens
  function remainingEPXSupply() hasInitialized public view returns (uint256 remainingEPXtokenCount) {
    return safeDiv(tokensRemaining,uint256(1)); // div by 10,000 for display normalisation (4 decimals)
  }

  // setup the CrowdSale parameters
  function SetupCrowdsale(uint256 _fundingStartBlock, uint256 _fundingEndBlock) hasInitialized public onlyOwner returns (bytes32 response) {
    if ((msg.sender == admin)
    && (!(isCrowdSaleSetup))
	&& (!(beneficiaryWallet != address(0x0)))) {
      // init addresses
      beneficiaryWallet                       = address(0x7A29e1343c6a107ce78199F1b3a1d2952efd77bA);
      tokenReward                             = StandardToken(address(0x35BAA72038F127f9f8C8f9B491049f64f377914d));

      // funding targets
      fundingMinCapInWei                      = 3;                       // ETH 300 + 000000000000000000 18 dec wei

      // update values
      amountRaisedInWei                       = 0;
      initialTokenSupply                      = 6;                               // 20,000,000 + 4 dec resolution
      tokensRemaining                         = initialTokenSupply;
      fundingStartBlock                       = _fundingStartBlock;
      fundingEndBlock                         = _fundingEndBlock;

      // configure crowdsale
      isCrowdSaleSetup                        = true;
      isCrowdSaleClosed                       = false;
      CurrentStatus                           = "Crowdsale is setup";
      return "Crowdsale is setup";
    } else if (msg.sender != admin) {
      //return "not authorised";
      revert();
    } else  {
      //return "campaign cannot be changed";
      revert();
    }
  }

  function checkPrice() hasInitialized internal view returns (uint256 currentPriceValue) {
    if (blockNumber >= fundingStartBlock+2) { // 30-day price change/final 30day change
      return (1); //30days-end   =7600EPX:1ETH
    } else if (blockNumber >= fundingStartBlock+1) { //3 week mark/over 21days
      return (2); //3w-30days    =8200EPX:1ETH
    } else if (blockNumber >= fundingStartBlock) { // start [0 hrs]
      return (3); //0-3weeks     =8800EPX:1ETH
    }
  }

  function () hasInitialized external payable {
    buy();
  }
  
  // default payable function when sending ether to this contract
  /* function () public payable { */
  function buy() hasInitialized public payable {
    // 0. conditions (length, crowdsale setup, zero check, exceed funding contrib check, contract valid check, within funding block range check, balance overflow check etc)
    require(!(msg.value == 0)
    /* && (msg.data.length == 0) */
    && (blockNumber <= fundingEndBlock)
    && (blockNumber >= fundingStartBlock)
    && (tokensRemaining > 0));

    // 1. vars
    uint256 rewardTransferAmount    = 0;

    // 2. effects
    amountRaisedInWei               = safeAdd(amountRaisedInWei, msg.value);
    rewardTransferAmount            = ((safeAdd(msg.value, checkPrice())));

    // 3. interaction
    tokensRemaining                 = safeSub(tokensRemaining, rewardTransferAmount);
    tokenReward.transfer(msg.sender, rewardTransferAmount);

    // 4. events
    usersEPXfundValue[msg.sender]   = safeAdd(usersEPXfundValue[msg.sender], msg.value);
    usersEPXfundValueCount = usersEPXfundValueCount + 1;
    usersEPXfundValueArray.push(msg.sender);
    //emit Buy(msg.sender, msg.value, rewardTransferAmount);
    //t();
  }

  function beneficiaryMultiSigWithdraw(uint256 _amount) hasInitialized public onlyOwner {
    require(areFundsReleasedToBeneficiary && (amountRaisedInWei >= fundingMinCapInWei));
    beneficiaryWallet.transfer(_amount);
    //emit Transfer(address(this), beneficiaryWallet, _amount);
   //t();
  }

  function checkGoalReached() hasInitialized public onlyOwner { // return crowdfund status to owner for each result case, update public vars
    // update state & status variables
    require (isCrowdSaleSetup);
    if ((amountRaisedInWei < fundingMinCapInWei) && (blockNumber <= fundingEndBlock && blockNumber >= fundingStartBlock)) { // ICO in progress, under softcap
      areFundsReleasedToBeneficiary = false;
      isCrowdSaleClosed = false;
      CurrentStatus = "In progress (Eth < Softcap)"; 
    } else if ((amountRaisedInWei < fundingMinCapInWei) && (blockNumber < fundingStartBlock)) { // ICO has not started
      areFundsReleasedToBeneficiary = false;
      isCrowdSaleClosed = false;
      CurrentStatus = "Crowdsale is setup"; 
    } else if ((amountRaisedInWei < fundingMinCapInWei) && (blockNumber > fundingEndBlock)) { // ICO ended, under softcap
      areFundsReleasedToBeneficiary = false;
      isCrowdSaleClosed = true;
      CurrentStatus = "Unsuccessful (Eth < Softcap)"; 
    } else if ((amountRaisedInWei >= fundingMinCapInWei) && (tokensRemaining == 0)) { // ICO ended, all tokens bought!
      areFundsReleasedToBeneficiary = true;
      isCrowdSaleClosed = true;
      CurrentStatus = "Successful (EPX >= Hardcap)!";
    } else if ((amountRaisedInWei >= fundingMinCapInWei) && (blockNumber > fundingEndBlock) && (tokensRemaining > 0)) { // ICO ended, over softcap!
      areFundsReleasedToBeneficiary = true;
      isCrowdSaleClosed = true;
      CurrentStatus = "Successful (Eth >= Softcap)!";
    } else if ((amountRaisedInWei >= fundingMinCapInWei) && (tokensRemaining > 0) && (blockNumber <= fundingEndBlock)) { // ICO in progress, over softcap!
      areFundsReleasedToBeneficiary = true;
      isCrowdSaleClosed = false;
      CurrentStatus = "In progress (Eth >= Softcap)!";
    }
    //t();
  }

  function refund() hasInitialized public { // any contributor can call this to have their Eth returned. user's purchased EPX tokens are burned prior refund of Eth.
    //require minCap not reached
    require ((amountRaisedInWei < fundingMinCapInWei)
    && (isCrowdSaleClosed)
    && (blockNumber > fundingEndBlock)
    && (usersEPXfundValue[msg.sender] > 0) && usersEPXfundValueArray.length != 0);

    // //burn user's token EPX token balance, refund Eth sent
    uint256 ethRefund = usersEPXfundValue[msg.sender];
    balancesArray[msg.sender] = 0;
    usersEPXfundValue[msg.sender] = 0;
    usersEPXfundValueArray = remove(msg.sender, usersEPXfundValueArray);
    usersEPXfundValueCount = usersEPXfundValueCount - 1;

  //   //record Burn event with number of EPX tokens burned
  //  emit Burn(msg.sender, usersEPXfundValue[msg.sender]);

  //   //send Eth back
  //   msg.sender.transfer(ethRefund);

  //   //record Refund event with number of Eth refunded in transaction
  //   emit Refund(msg.sender, ethRefund);
    //t();
  }

  function t() hasInitialized public {
    blockNumber = blockNumber + 1;
  }

  function remove(address _valueToFindAndRemove, address[] memory _array) hasInitialized public  returns(address[] memory) {

    auxArray = new address[](0); 

    for (uint i = 0; i < _array.length; i++){
        if(_array[i] != _valueToFindAndRemove)
            auxArray.push(_array[i]);
    }

    return auxArray;
  }
}