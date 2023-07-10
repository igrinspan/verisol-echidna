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

	function vc0x0x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Created&& true));
	}
	function vc0x0x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		Complete();
		assert(!(State == StateType.Created&& true));
	}
	function vc0x1x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc0x1x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		Complete();
		assert(!(State == StateType.InTransit&& true));
	}
	function vc0x2x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Completed&& true));
	}
	function vc0x2x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		Complete();
		assert(!(State == StateType.Completed&& true));
	}
	function vc1x0x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Created&& true));
	}
	function vc1x0x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		Complete();
		assert(!(State == StateType.Created&& true));
	}
	function vc1x1x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc1x1x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		Complete();
		assert(!(State == StateType.InTransit&& true));
	}
	function vc1x2x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Completed&& true));
	}
	function vc1x2x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		Complete();
		assert(!(State == StateType.Completed&& true));
	}
	function vc2x0x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Created&& true));
	}
	function vc2x0x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		Complete();
		assert(!(State == StateType.Created&& true));
	}
	function vc2x1x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc2x1x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		Complete();
		assert(!(State == StateType.InTransit&& true));
	}
	function vc2x2x0(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Completed&& true));
	}
	function vc2x2x1(address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		Complete();
		assert(!(State == StateType.Completed&& true));
	}

    //Set of States
    enum StateType { Created, InTransit, Completed}
    
    //List of properties
    StateType public  State;
    address public  InitiatingCounterparty;
    address public  Counterparty;
    address public  PreviousCounterparty;
    address public  SupplyChainOwner;
    address public  SupplyChainObserver;
    
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

        State = StateType.Completed;
        PreviousCounterparty = Counterparty;
        Counterparty = address(0x0000000000000000000000000000000000000000);
    }
}