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