pragma solidity >=0.4.25 <0.9.0;

contract DefectiveComponentCounter {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0() hasInitialized payable public {
		assert(!(true && true));
	}

     //Set of States
    enum StateType {Create, ComputeTotal}

    //List of properties
    StateType public  State;
    address public  Manufacturer;
    int[12] public DefectiveComponentsCount;
    int public Total;

    // constructor function
    function my_constructor(int[12] memory defectiveComponentsCount) hasNotInitialized public
    {
        Manufacturer = msg.sender;
        DefectiveComponentsCount = defectiveComponentsCount;
        Total = 0;
        State = StateType.Create;
				has_initialized = true;
    }

}