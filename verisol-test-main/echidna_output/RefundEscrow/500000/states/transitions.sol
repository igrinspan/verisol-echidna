// SPDX-License-Identifier: UNLICENSED 
// 0xBdB39870D0bB20dF10913ACDFce100029e2715A4

/**
 *Submitted for verification at Etherscan.io on 2019-07-23
*/


// File: installed_contracts/openzeppelin-solidity/contracts/math/SafeMath.sol

pragma solidity >=0.4.25 <0.9.0;

/**
 * @title SafeMath
 * @dev Unsigned math operations with safety checks that revert on error
 */
library SafeMath {
    /**
     * @dev Multiplies two unsigned integers, reverts on overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    /**
     * @dev Integer division of two unsigned integers truncating the quotient, reverts on division by zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Subtracts two unsigned integers, reverts on overflow (i.e. if subtrahend is greater than minuend).
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Adds two unsigned integers, reverts on overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);

        return c;
    }

    /**
     * @dev Divides two unsigned integers and returns the remainder (unsigned integer modulo),
     * reverts when dividing by zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }
}

// File: installed_contracts/openzeppelin-solidity/contracts/ownership/Secondary.sol

pragma solidity >=0.4.25 <0.9.0;

/**
 * @title Secondary
 * @dev A Secondary contract can only be used by its primary account (the one that created it)
 */
contract Secondary {
    address private _primary;

    event PrimaryTransferred(
        address recipient
    );

    /**
     * @dev Sets the primary account to the one that is creating the Secondary contract.
     */
    constructor () {
        _primary = msg.sender;
        emit PrimaryTransferred(_primary);
    }

    /**
     * @dev Reverts if called from any account other than the primary.
     */
    modifier onlyPrimary() {
        require(msg.sender == _primary);
        _;
    }

    /**
     * @return the address of the primary.
     */
    function primary() public view returns (address) {
        return _primary;
    }

    /**
     * @dev Transfers contract to a new primary.
     * @param recipient The address of new primary.
     */
    function transferPrimary(address recipient) public onlyPrimary {
        require(recipient != address(0));
        _primary = recipient;
        emit PrimaryTransferred(_primary);
    }
}

// File: installed_contracts/openzeppelin-solidity/contracts/payment/escrow/Escrow.sol

pragma solidity >=0.4.25 <0.9.0;



 /**
  * @title Escrow
  * @dev Base escrow contract, holds funds designated for a payee until they
  * withdraw them.
  * @dev Intended usage: This contract (and derived escrow contracts) should be a
  * standalone contract, that only interacts with the contract that instantiated
  * it. That way, it is guaranteed that all Ether will be handled according to
  * the Escrow rules, and there is no need to check for payable functions or
  * transfers in the inheritance tree. The contract that uses the escrow as its
  * payment method should be its primary, and provide public methods redirecting
  * to the escrow's deposit and withdraw.
  */
contract Escrow is Secondary {
    using SafeMath for uint256;

    event Deposited(address indexed payee, uint256 weiAmount);
    event Withdrawn(address indexed payee, uint256 weiAmount);

    mapping(address => uint256) private _deposits;

    function depositsOf(address payee) public view returns (uint256) {
        return _deposits[payee];
    }

    /**
     * @dev Stores the sent amount as credit to be withdrawn.
     * @param payee The destination address of the funds.
     */
    function deposit(address payee) virtual public payable onlyPrimary {
        uint256 amount = msg.value;
        _deposits[payee] = _deposits[payee].add(amount);

        emit Deposited(payee, amount);
    }

    /**
     * @dev Withdraw accumulated balance for a payee.
     * @param payee The address whose funds will be withdrawn and transferred to.
     */
    function withdraw(address payable payee) virtual public onlyPrimary {
        uint256 payment = _deposits[payee];

        _deposits[payee] = 0;

        payee.transfer(payment);

        emit Withdrawn(payee, payment);
    }
}

// File: installed_contracts/openzeppelin-solidity/contracts/payment/escrow/ConditionalEscrow.sol

pragma solidity >=0.4.25 <0.9.0;


/**
 * @title ConditionalEscrow
 * @dev Base abstract escrow to only allow withdrawal if a condition is met.
 * @dev Intended usage: See Escrow.sol. Same usage guidelines apply here.
 */
abstract contract ConditionalEscrow is Escrow {
    /**
     * @dev Returns whether an address is allowed to withdraw their funds. To be
     * implemented by derived contracts.
     * @param payee The destination address of the funds.
     */
    //function withdrawalAllowed(address payee) virtual public view returns (bool);

    // function withdraw(address payable payee) override public {
    //     require(withdrawalAllowed(payee));
    //     //super.withdraw(payee);
    // }
}

// File: installed_contracts/openzeppelin-solidity/contracts/payment/escrow/RefundEscrow.sol

pragma solidity >=0.4.25 <0.9.0;


/**
 * @title RefundEscrow
 * @dev Escrow that holds funds for a beneficiary, deposited from multiple
 * parties.
 * @dev Intended usage: See Escrow.sol. Same usage guidelines apply here.
 * @dev The primary account (that is, the contract that instantiates this
 * contract) may deposit, close the deposit period, and allow for either
 * withdrawal by the beneficiary, or refunds to the depositors. All interactions
 * with RefundEscrow will be made through the primary contract. See the
 * RefundableCrowdsale contract for an example of RefundEscrow’s use.
 */
contract RefundEscrow is ConditionalEscrow {
	modifier hasInitialized {
		require(has_initialized);
		_;
	}

	modifier hasNotInitialized {
		require(!has_initialized);
		_;
	}

	bool has_initialized = false;

	function vc0x0x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		deposit(refundee);
		assert(!(_state == State.Active&& true));
	}
	function vc0x0x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		close();
		assert(!(_state == State.Active&& true));
	}
	function vc0x0x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		enableRefunds();
		assert(!(_state == State.Active&& true));
	}
	function vc0x0x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		beneficiaryWithdraw();
		assert(!(_state == State.Active&& true));
	}
	function vc0x0x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		withdraw(payee);
		assert(!(_state == State.Active&& true));
	}
	function vc0x0x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		transferPrimary(recipient);
		assert(!(_state == State.Active&& true));
	}
	function vc0x1x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		deposit(refundee);
		assert(!(_state == State.Refunding&& true));
	}
	function vc0x1x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		close();
		assert(!(_state == State.Refunding&& true));
	}
	function vc0x1x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		enableRefunds();
		assert(!(_state == State.Refunding&& true));
	}
	function vc0x1x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		beneficiaryWithdraw();
		assert(!(_state == State.Refunding&& true));
	}
	function vc0x1x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		withdraw(payee);
		assert(!(_state == State.Refunding&& true));
	}
	function vc0x1x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		transferPrimary(recipient);
		assert(!(_state == State.Refunding&& true));
	}
	function vc0x2x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		deposit(refundee);
		assert(!(_state == State.Closed&& true));
	}
	function vc0x2x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		close();
		assert(!(_state == State.Closed&& true));
	}
	function vc0x2x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		enableRefunds();
		assert(!(_state == State.Closed&& true));
	}
	function vc0x2x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		beneficiaryWithdraw();
		assert(!(_state == State.Closed&& true));
	}
	function vc0x2x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		withdraw(payee);
		assert(!(_state == State.Closed&& true));
	}
	function vc0x2x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Active);
		transferPrimary(recipient);
		assert(!(_state == State.Closed&& true));
	}
	function vc1x0x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		deposit(refundee);
		assert(!(_state == State.Active&& true));
	}
	function vc1x0x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		close();
		assert(!(_state == State.Active&& true));
	}
	function vc1x0x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		enableRefunds();
		assert(!(_state == State.Active&& true));
	}
	function vc1x0x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		beneficiaryWithdraw();
		assert(!(_state == State.Active&& true));
	}
	function vc1x0x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		withdraw(payee);
		assert(!(_state == State.Active&& true));
	}
	function vc1x0x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		transferPrimary(recipient);
		assert(!(_state == State.Active&& true));
	}
	function vc1x1x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		deposit(refundee);
		assert(!(_state == State.Refunding&& true));
	}
	function vc1x1x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		close();
		assert(!(_state == State.Refunding&& true));
	}
	function vc1x1x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		enableRefunds();
		assert(!(_state == State.Refunding&& true));
	}
	function vc1x1x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		beneficiaryWithdraw();
		assert(!(_state == State.Refunding&& true));
	}
	function vc1x1x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		withdraw(payee);
		assert(!(_state == State.Refunding&& true));
	}
	function vc1x1x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		transferPrimary(recipient);
		assert(!(_state == State.Refunding&& true));
	}
	function vc1x2x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		deposit(refundee);
		assert(!(_state == State.Closed&& true));
	}
	function vc1x2x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		close();
		assert(!(_state == State.Closed&& true));
	}
	function vc1x2x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		enableRefunds();
		assert(!(_state == State.Closed&& true));
	}
	function vc1x2x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		beneficiaryWithdraw();
		assert(!(_state == State.Closed&& true));
	}
	function vc1x2x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		withdraw(payee);
		assert(!(_state == State.Closed&& true));
	}
	function vc1x2x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Refunding);
		transferPrimary(recipient);
		assert(!(_state == State.Closed&& true));
	}
	function vc2x0x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		deposit(refundee);
		assert(!(_state == State.Active&& true));
	}
	function vc2x0x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		close();
		assert(!(_state == State.Active&& true));
	}
	function vc2x0x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		enableRefunds();
		assert(!(_state == State.Active&& true));
	}
	function vc2x0x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		beneficiaryWithdraw();
		assert(!(_state == State.Active&& true));
	}
	function vc2x0x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		withdraw(payee);
		assert(!(_state == State.Active&& true));
	}
	function vc2x0x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		transferPrimary(recipient);
		assert(!(_state == State.Active&& true));
	}
	function vc2x1x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		deposit(refundee);
		assert(!(_state == State.Refunding&& true));
	}
	function vc2x1x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		close();
		assert(!(_state == State.Refunding&& true));
	}
	function vc2x1x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		enableRefunds();
		assert(!(_state == State.Refunding&& true));
	}
	function vc2x1x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		beneficiaryWithdraw();
		assert(!(_state == State.Refunding&& true));
	}
	function vc2x1x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		withdraw(payee);
		assert(!(_state == State.Refunding&& true));
	}
	function vc2x1x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		transferPrimary(recipient);
		assert(!(_state == State.Refunding&& true));
	}
	function vc2x2x0(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		deposit(refundee);
		assert(!(_state == State.Closed&& true));
	}
	function vc2x2x1(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		close();
		assert(!(_state == State.Closed&& true));
	}
	function vc2x2x2(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		enableRefunds();
		assert(!(_state == State.Closed&& true));
	}
	function vc2x2x3(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		beneficiaryWithdraw();
		assert(!(_state == State.Closed&& true));
	}
	function vc2x2x4(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		withdraw(payee);
		assert(!(_state == State.Closed&& true));
	}
	function vc2x2x5(address refundee, address payable payee, address recipient) hasInitialized payable public {
		require(_state == State.Closed);
		transferPrimary(recipient);
		assert(!(_state == State.Closed&& true));
	}
    enum State { Active, Refunding, Closed }

    event RefundsClosed();
    event RefundsEnabled();

    State private _state;
    address payable private _beneficiary;

    /**
     * @dev Constructor.
     * @param beneficiary The beneficiary of the deposits.
     */
    function my_constructor (address payable beneficiary) hasNotInitialized public {
        require(beneficiary != address(0));
        _beneficiary = beneficiary;
        _state = State.Active;
				has_initialized = true;
    }

    /**
     * @return the current state of the escrow.
     */
    function state() hasInitialized public view returns (State) {
        return _state;
    }

    /**
     * @return the beneficiary of the escrow.
     */
    function beneficiary() hasInitialized public view returns (address) {
        return _beneficiary;
    }

    /**
     * @dev Stores funds that may later be refunded.
     * @param refundee The address funds will be sent to if a refund occurs.
     */
    function deposit(address refundee) hasInitialized override public payable {
        require(_state == State.Active);
        //super.deposit(refundee);
    }

    /**
     * @dev Allows for the beneficiary to withdraw their funds, rejecting
     * further deposits.
     */
    function close() hasInitialized public onlyPrimary {
        require(_state == State.Active);
        _state = State.Closed;
        emit RefundsClosed();
    }

    /**
     * @dev Allows for refunds to take place, rejecting further deposits.
     */
    function enableRefunds() hasInitialized public onlyPrimary {
        require(_state == State.Active);
        _state = State.Refunding;
        emit RefundsEnabled();
    }

    /**
     * @dev Withdraws the beneficiary's funds.
     */
    function beneficiaryWithdraw() hasInitialized public {
        require(_state == State.Closed);
        _beneficiary.transfer(address(this).balance);
    }
    
    function withdraw(address payable payee) hasInitialized override public {
        require(withdrawalAllowed(payee));
        //super.withdraw(payee);
    }


    /**
     * @dev Returns whether refundees can withdraw their deposits (be refunded). The overridden function receives a
     * 'payee' argument, but we ignore it here since the condition is global, not per-payee.
     */
    function withdrawalAllowed(address) hasInitialized public view returns (bool) {
        return _state == State.Refunding;
    }
}