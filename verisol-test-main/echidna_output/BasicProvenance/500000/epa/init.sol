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
		assert(!(!(State != StateType.Completed) && !(State != StateType.Completed)));
	}
	function vc1x0x0(address newCounterparty) hasInitialized payable public {
		assert(!(State != StateType.Completed && State != StateType.Completed));
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

}