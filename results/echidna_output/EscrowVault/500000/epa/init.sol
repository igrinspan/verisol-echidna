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

	function vc0x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true));
	}
	function vc1x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && !(state == State.Refunding) && true));
	}
	function vc2x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true));
	}
	function vc3x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.Active) && state == State.Refunding && true));
	}
	function vc4x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true));
	}
	function vc5x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && !(state == State.Refunding) && true));
	}
	function vc6x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true));
	}
	function vc7x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true));
	}
	function vc8x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && !(state == State.GoalReached) && !(state == State.GoalReached) && !(state == State.GoalReached) && state == State.Active && state == State.Refunding && true));
	}
	function vc9x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && !(state == State.Refunding) && true));
	}
	function vc10x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true));
	}
	function vc11x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && !(state == State.Active) && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && !(state == State.Active) && state == State.Refunding && true));
	}
	function vc12x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true));
	}
	function vc13x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && !(state == State.Refunding) && true));
	}
	function vc14x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!(!((state == State.Active || state == State.GoalReached)) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true));
	}
	function vc15x0x0(uint256 _amount, address payable investor, address newOwner) hasInitialized payable public {
		assert(!((state == State.Active || state == State.GoalReached) && state == State.Active && state == State.GoalReached && state == State.GoalReached && state == State.GoalReached && state == State.Active && state == State.Refunding && true));
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

}