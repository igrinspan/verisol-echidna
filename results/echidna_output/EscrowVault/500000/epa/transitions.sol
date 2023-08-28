// SPDX-License-Identifier: UNLICENSED 
// Part of https://etherscan.io/address/0x30b149e87fc634faaca4e46a807a04357b0816d7#code

pragma solidity >=0.4.25 <0.9.0;


/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    require(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a);
    return c;
  }
}

/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;


  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  constructor() public {
    owner = msg.sender;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}

/**
 * The EscrowVault contract collects crowdsale ethers and allows to refund
 * if softcap soft cap is not reached.
 */
contract EscrowVault is Ownable {
	modifier hasInitialized {
		require(has_initialized);
		_;
	}

	modifier hasNotInitialized {
		require(!has_initialized);
		_;
	}

	bool has_initialized = false;

	function vc0x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc0x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc0x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc0x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc0x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc0x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc0x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc0x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc0x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc0x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc0x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc0x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc0x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc0x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc0x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc0x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc1x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc1x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc1x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc1x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc2x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc2x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc2x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc2x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc3x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc3x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc3x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc3x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc4x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc4x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc4x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc4x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc5x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc5x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc5x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc5x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc6x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc6x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc6x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc6x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc7x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc7x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc7x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc7x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc8x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc8x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc8x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc8x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc9x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc9x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc9x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc9x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc10x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc10x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc10x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc10x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc11x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc11x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc11x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc11x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc12x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc12x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc12x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc12x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc13x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc13x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc13x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc13x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc14x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc14x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc14x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc14x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x0x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x0x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x0x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x0x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x0x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x0x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x0x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x1x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x2x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x2x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x2x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x2x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x2x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x2x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x2x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x2x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x3x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x4x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x4x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x4x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x4x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x4x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x4x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x4x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x4x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x5x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x6x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x6x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x6x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x6x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x6x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x6x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x6x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x6x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x7x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x7x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x7x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x7x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x7x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x7x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x7x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x7x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x8x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x8x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x8x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x8x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x8x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x8x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x8x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x8x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x9x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x9x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x9x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x9x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x9x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x9x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x9x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x9x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true&& true));
	}
	function vc15x10x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x10x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x10x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x10x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x10x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x10x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x10x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x10x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x11x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true&& true));
	}
	function vc15x12x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x12x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x12x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x12x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x12x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x12x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x12x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x12x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x13x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true&& true));
	}
	function vc15x14x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x14x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x14x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x14x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x14x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x14x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x14x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x14x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		deposit(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x1(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		setGoalReached();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x2(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0);
		withdraw(_amount);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x3(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		withdrawAll();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x4(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		close();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x5(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		enableRefunds();
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x6(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		refund(investor);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
	function vc15x15x7(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		require((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true);
		require(newOwner != address(0));
		transferOwnership(newOwner);
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true&& true));
	}
  using SafeMath for uint256;

  enum State { Active, Refunding, GoalReached, Closed }

  mapping (address => uint256) public deposited;
  address payable public beneficiary;
  address public superOwner;
  State public state;

  event GoalReached();
  event RefundsEnabled();
  event Refunded(address indexed beneficiary, uint256 weiAmount);
  event Withdrawal(uint256 weiAmount);
  event Close();

  function my_constructor(address _superOwner, address payable _beneficiary) hasNotInitialized public {
    require(_beneficiary != address(0x0));
    require(_superOwner != address(0x0));
    beneficiary = _beneficiary;
    superOwner = _superOwner;
    state = State.Active;
				has_initialized = true;
  }

  function deposit(address investor) hasInitialized onlyOwner public payable {
    require(state == State.Active || state == State.GoalReached);
    deposited[investor] = deposited[investor].add(msg.value);
  }

  function setGoalReached() hasInitialized onlyOwner public {
    require (state == State.Active);
    state = State.GoalReached;
    emit GoalReached();
  }

  function withdraw(uint256 _amount) hasInitialized public {
    require(msg.sender == superOwner);
    require(state == State.GoalReached);
    require (_amount <= address(this).balance &&  _amount > 0);
    beneficiary.transfer(_amount);
    emit Withdrawal(_amount);
  }

  function withdrawAll() hasInitialized onlyOwner public {
    require(state == State.GoalReached);
    uint256 balance = address(this).balance;
    emit Withdrawal(balance);
    beneficiary.transfer(balance);
  }

  function close() hasInitialized onlyOwner public {
    require (state == State.GoalReached);
    withdrawAll();
    state = State.Closed;
    emit Close();
  }

  function enableRefunds() hasInitialized onlyOwner public {
    require(state == State.Active);
    state = State.Refunding;
    emit RefundsEnabled();
  }

  function refund(address payable investor) hasInitialized public {
    require(state == State.Refunding);
    uint256 depositedValue = deposited[investor];
    deposited[investor] = 0;
    investor.transfer(depositedValue);
    emit Refunded(investor, depositedValue);
  }
}