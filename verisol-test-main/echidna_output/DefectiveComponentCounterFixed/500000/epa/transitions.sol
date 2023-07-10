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

	function vc0x0x1() hasInitialized payable public {
		require(!(State != StateType.ComputeTotal) && true);
		GetDefectiveComponentsCount();
		assert(!(!(State != StateType.ComputeTotal) && true&& true));
	}
	function vc0x1x1() hasInitialized payable public {
		require(!(State != StateType.ComputeTotal) && true);
		GetDefectiveComponentsCount();
		assert(!(State != StateType.ComputeTotal && true&& true));
	}
	function vc1x0x0() hasInitialized payable public {
		require(State != StateType.ComputeTotal && true);
		require(Manufacturer == msg.sender);
		ComputeTotal();
		assert(!(!(State != StateType.ComputeTotal) && true&& true));
	}
	function vc1x0x1() hasInitialized payable public {
		require(State != StateType.ComputeTotal && true);
		GetDefectiveComponentsCount();
		assert(!(!(State != StateType.ComputeTotal) && true&& true));
	}
	function vc1x1x0() hasInitialized payable public {
		require(State != StateType.ComputeTotal && true);
		require(Manufacturer == msg.sender);
		ComputeTotal();
		assert(!(State != StateType.ComputeTotal && true&& true));
	}
	function vc1x1x1() hasInitialized payable public {
		require(State != StateType.ComputeTotal && true);
		GetDefectiveComponentsCount();
		assert(!(State != StateType.ComputeTotal && true&& true));
	}

     //Set of States
    enum StateType {Create, ComputeTotal}

    //List of properties
    StateType State;
    address Manufacturer;
    int[] DefectiveComponentsCount;
    int Total;

    // constructor function
    function my_constructor(int[] memory defectiveComponentsCount) hasNotInitialized public
    {
        Manufacturer = msg.sender;
        DefectiveComponentsCount = defectiveComponentsCount;
        Total = 0;
        State = StateType.Create;
				has_initialized = true;
    }

    // call this function to send a request
    function ComputeTotal() hasInitialized public
    {
        if (Manufacturer != msg.sender)
        {
            revert();
        }

        //FIX: Add precondition
        if (State == StateType.ComputeTotal)
        {
            revert();
        }

        // calculate total for only the first 12 values, in case more than 12 are entered
        for (uint i = 0; i < 3; i++)
        {
            Total += DefectiveComponentsCount[i];
        }

        State = StateType.ComputeTotal;
    }

    // add the required getter function for array DefectiveComponentsCount
    function GetDefectiveComponentsCount() hasInitialized public view returns (int[] memory) {
        return DefectiveComponentsCount;
    }
}