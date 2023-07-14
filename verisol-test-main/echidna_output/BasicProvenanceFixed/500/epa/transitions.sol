pragma solidity >=0.4.25 <0.9.0;

contract BasicProvenance {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc1x0x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created)));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(!(State != StateType.Completed) && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc1x1x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created)));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc1x2x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created)));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created)&& true));
	}
	function vc1x3x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created)));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created)&& true));
	}
	function vc2x0x1(address newCounterparty) hasInitialized payable public {
		require(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(!(State != StateType.Completed) && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc2x1x1(address newCounterparty) hasInitialized payable public {
		require(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc2x2x1(address newCounterparty) hasInitialized payable public {
		require(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created)&& true));
	}
	function vc2x3x1(address newCounterparty) hasInitialized payable public {
		require(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created)&& true));
	}
	function vc3x0x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(!(State != StateType.Completed) && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc3x0x1(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(!(State != StateType.Completed) && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc3x1x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc3x1x1(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created))&& true));
	}
	function vc3x2x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created)&& true));
	}
	function vc3x2x1(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created)&& true));
	}
	function vc3x3x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created)&& true));
	}
	function vc3x3x1(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created));
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created)&& true));
	}

    //Set of States
    enum StateType { Created, InTransit, Completed}
    
    //List of properties
    StateType State;
    address InitiatingCounterparty;
    address Counterparty;
    address PreviousCounterparty;
    address SupplyChainOwner;
    address SupplyChainObserver;
    
    function my_constructor(address supplyChainOwner, address supplyChainObserver) hasNotInitialized public
    {
        InitiatingCounterparty = msg.sender;
        Counterparty = InitiatingCounterparty;
        SupplyChainOwner = supplyChainOwner;
        SupplyChainObserver = supplyChainObserver;
        State = StateType.Created;
				has_initialized = true;
    }

    function TransferResponsibility(address newCounterparty) hasInitialized public
    {

        if (Counterparty != msg.sender || State == StateType.Completed)
        {
            revert();
        }

        if (State == StateType.Created)
        {
            State = StateType.InTransit;
        }

        PreviousCounterparty = Counterparty;
        Counterparty = newCounterparty;
    }

    function Complete() hasInitialized public
    {
        if (SupplyChainOwner != msg.sender || State == StateType.Completed)
        {
            revert();
        }

        //FIX: Add precondition
        if (State == StateType.Created)
        {
            revert();
        }

        State = StateType.Completed;
        PreviousCounterparty = Counterparty;
        Counterparty = address(0);
    }
}