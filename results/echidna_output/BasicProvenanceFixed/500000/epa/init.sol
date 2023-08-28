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
		assert(!(!(State != StateType.Completed) && !((State != StateType.Completed && State != StateType.Created))));
	}
	function vc1x0x0(address newCounterparty) hasInitialized payable public {
		assert(!(State != StateType.Completed && !((State != StateType.Completed && State != StateType.Created))));
	}
	function vc2x0x0(address newCounterparty) hasInitialized payable public {
		assert(!(!(State != StateType.Completed) && (State != StateType.Completed && State != StateType.Created)));
	}
	function vc3x0x0(address newCounterparty) hasInitialized payable public {
		assert(!(State != StateType.Completed && (State != StateType.Completed && State != StateType.Created)));
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

}