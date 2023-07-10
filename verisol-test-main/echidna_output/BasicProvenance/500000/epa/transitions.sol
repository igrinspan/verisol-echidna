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
		require(State != StateType.Completed && State != StateType.Completed);
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(!(State != StateType.Completed) && !(State != StateType.Completed)&& true));
	}
	function vc1x0x1(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && State != StateType.Completed);
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(!(State != StateType.Completed) && !(State != StateType.Completed)&& true));
	}
	function vc1x1x0(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && State != StateType.Completed);
		require(Counterparty == msg.sender);
		TransferResponsibility(newCounterparty);
		assert(!(State != StateType.Completed && State != StateType.Completed&& true));
	}
	function vc1x1x1(address newCounterparty) hasInitialized payable public {
		require(State != StateType.Completed && State != StateType.Completed);
		require(SupplyChainOwner == msg.sender);
		Complete();
		assert(!(State != StateType.Completed && State != StateType.Completed&& true));
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