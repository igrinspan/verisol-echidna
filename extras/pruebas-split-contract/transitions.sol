/**
 *Submitted for verification at Etherscan.io on 2018-03-03
*/

pragma solidity ^0.5.0;
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
	function vc0x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc0x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc0x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc0x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc0x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc0x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc0x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc0x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc0x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc1x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc1x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc2x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc2x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc3x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc3x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc4x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc4x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc5x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc5x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc6x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc6x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc7x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc7x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc8x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc8x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc9x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc9x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc10x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc10x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc11x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc11x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc12x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc12x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc13x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc13x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc14x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc14x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x0x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x0x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x0x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x0x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x0x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x1x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x1x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x1x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x1x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x1x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x2x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x2x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x2x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x2x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x2x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x3x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x3x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x3x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x3x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x3x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x4x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x4x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x4x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x4x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x4x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x5x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x5x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x5x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x5x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x5x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x6x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x6x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x6x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x6x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x6x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x7x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x7x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x7x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x7x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x7x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x8x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x8x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x8x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x8x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x8x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x9x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x9x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x9x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x9x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x9x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x10x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x10x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x10x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x10x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x10x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x11x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x11x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x11x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x11x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x11x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true&& true));
	}
	function vc15x12x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x12x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x12x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x12x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x12x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x13x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x13x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x13x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x13x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x13x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x14x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x14x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x14x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x14x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x14x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		t();
		assert(!(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x15x0(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == admin && msg.sender == owner);
		SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x15x1(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((!(msg.value == 0)));
		buy();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x15x2(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require(msg.sender == owner);
		checkGoalReached();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x15x3(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
		require((usersEPXfundValue[msg.sender] > 0));
		refund();
		assert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));
	}
	function vc15x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {
		require((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);
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
  constructor(uint256 _blockNumber) public onlyOwner {
    admin = msg.sender;
    CurrentStatus = "Crowdsale deployed to chain";
    blockNumber = _blockNumber;
  }

  // total number of tokens initially
  function initialEPXSupply() public view returns (uint256 initialEPXtokenCount) {
    return safeDiv(initialTokenSupply,uint256(1)); // div by 10,000 for display normalisation (4 decimals)
  }

  // remaining number of tokens
  function remainingEPXSupply() public view returns (uint256 remainingEPXtokenCount) {
    return safeDiv(tokensRemaining,uint256(1)); // div by 10,000 for display normalisation (4 decimals)
  }

  // setup the CrowdSale parameters
  function SetupCrowdsale(uint256 _fundingStartBlock, uint256 _fundingEndBlock) public onlyOwner returns (bytes32 response) {
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

  function checkPrice() internal view returns (uint256 currentPriceValue) {
    if (blockNumber >= fundingStartBlock+2) { // 30-day price change/final 30day change
      return (1); //30days-end   =7600EPX:1ETH
    } else if (blockNumber >= fundingStartBlock+1) { //3 week mark/over 21days
      return (2); //3w-30days    =8200EPX:1ETH
    } else if (blockNumber >= fundingStartBlock) { // start [0 hrs]
      return (3); //0-3weeks     =8800EPX:1ETH
    }
  }

  function () external payable {
    buy();
  }
  
  // default payable function when sending ether to this contract
  /* function () public payable { */
  function buy() public payable {
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

  function beneficiaryMultiSigWithdraw(uint256 _amount) public onlyOwner {
    require(areFundsReleasedToBeneficiary && (amountRaisedInWei >= fundingMinCapInWei));
    beneficiaryWallet.transfer(_amount);
    //emit Transfer(address(this), beneficiaryWallet, _amount);
   //t();
  }

  function checkGoalReached() public onlyOwner { // return crowdfund status to owner for each result case, update public vars
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

  function refund() public { // any contributor can call this to have their Eth returned. user's purchased EPX tokens are burned prior refund of Eth.
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

  function t() public {
    blockNumber = blockNumber + 1;
  }

  function remove(address _valueToFindAndRemove, address[] memory _array) public  returns(address[] memory) {

    auxArray = new address[](0); 

    for (uint i = 0; i < _array.length; i++){
        if(_array[i] != _valueToFindAndRemove)
            auxArray.push(_array[i]);
    }

    return auxArray;
  }
}