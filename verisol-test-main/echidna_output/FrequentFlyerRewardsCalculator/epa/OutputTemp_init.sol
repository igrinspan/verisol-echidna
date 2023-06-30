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
		assert(!(true && true && true));
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

}