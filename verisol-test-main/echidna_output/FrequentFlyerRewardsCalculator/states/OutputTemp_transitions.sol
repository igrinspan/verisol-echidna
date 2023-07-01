pragma solidity >=0.4.25 <0.6.0;

contract FrequentFlyerRewardsCalculator {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0(int[] memory miles) hasInitialized payable public {
		require(State == StateType.SetFlyerAndReward);
		AddMiles(miles);
		assert(!(State == StateType.SetFlyerAndReward&& true));
	}
	function vc0x0x1(int[] memory miles) hasInitialized payable public {
		require(State == StateType.SetFlyerAndReward);
		ComputeTotalRewards();
		assert(!(State == StateType.SetFlyerAndReward&& true));
	}
	function vc0x0x2(int[] memory miles) hasInitialized payable public {
		require(State == StateType.SetFlyerAndReward);
		GetMiles();
		assert(!(State == StateType.SetFlyerAndReward&& true));
	}
	function vc0x1x0(int[] memory miles) hasInitialized payable public {
		require(State == StateType.SetFlyerAndReward);
		AddMiles(miles);
		assert(!(State == StateType.MilesAdded&& true));
	}
	function vc0x1x1(int[] memory miles) hasInitialized payable public {
		require(State == StateType.SetFlyerAndReward);
		ComputeTotalRewards();
		assert(!(State == StateType.MilesAdded&& true));
	}
	function vc0x1x2(int[] memory miles) hasInitialized payable public {
		require(State == StateType.SetFlyerAndReward);
		GetMiles();
		assert(!(State == StateType.MilesAdded&& true));
	}
	function vc1x0x0(int[] memory miles) hasInitialized payable public {
		require(State == StateType.MilesAdded);
		AddMiles(miles);
		assert(!(State == StateType.SetFlyerAndReward&& true));
	}
	function vc1x0x1(int[] memory miles) hasInitialized payable public {
		require(State == StateType.MilesAdded);
		ComputeTotalRewards();
		assert(!(State == StateType.SetFlyerAndReward&& true));
	}
	function vc1x0x2(int[] memory miles) hasInitialized payable public {
		require(State == StateType.MilesAdded);
		GetMiles();
		assert(!(State == StateType.SetFlyerAndReward&& true));
	}
	function vc1x1x0(int[] memory miles) hasInitialized payable public {
		require(State == StateType.MilesAdded);
		AddMiles(miles);
		assert(!(State == StateType.MilesAdded&& true));
	}
	function vc1x1x1(int[] memory miles) hasInitialized payable public {
		require(State == StateType.MilesAdded);
		ComputeTotalRewards();
		assert(!(State == StateType.MilesAdded&& true));
	}
	function vc1x1x2(int[] memory miles) hasInitialized payable public {
		require(State == StateType.MilesAdded);
		GetMiles();
		assert(!(State == StateType.MilesAdded&& true));
	}
     //Set of States
    enum StateType {SetFlyerAndReward, MilesAdded}

    //List of properties
    StateType public  State;
    address public  AirlineRepresentative;
    address public  Flyer;
    uint public RewardsPerMile;
    uint[] public Miles;
    uint IndexCalculatedUpto;
    uint public TotalRewards;

    // constructor function
    function my_constructor(address flyer, int rewardsPerMile) public {
		require(!has_initialized);
        AirlineRepresentative = msg.sender;
        Flyer = flyer;
        RewardsPerMile = uint(rewardsPerMile);
        IndexCalculatedUpto = 0;
        TotalRewards = 0;
        State = StateType.SetFlyerAndReward;
		has_initialized = true;
    }

    // call this function to add miles
    function AddMiles(int[] memory miles) hasInitialized public {
        if (Flyer != msg.sender)
        {
            revert();
        }

        for (uint i = 0; i < miles.length; i++)
        {
            Miles.push(uint(miles[i]));
        }

        ComputeTotalRewards();

        State = StateType.MilesAdded;
    }

    function ComputeTotalRewards() hasInitialized private {
        // make length uint compatible
        uint milesLength = uint(Miles.length);
        for (uint i = IndexCalculatedUpto; i < milesLength; i++)
        {
            TotalRewards += (RewardsPerMile * Miles[i]);
            IndexCalculatedUpto++;
        }
    }

    function GetMiles() hasInitialized public view returns (uint[] memory) {
        return Miles;
    }
}