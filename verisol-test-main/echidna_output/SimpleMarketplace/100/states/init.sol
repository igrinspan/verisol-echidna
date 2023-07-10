pragma solidity >=0.4.25 <0.9.0;

pragma experimental ABIEncoderV2;

contract SimpleMarketplace {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0(int offerPrice) hasInitialized payable public {
		assert(!(StateEnum == StateType.ItemAvailable));
	}
	function vc1x0x0(int offerPrice) hasInitialized payable public {
		assert(!(StateEnum == StateType.OfferPlaced));
	}
	function vc2x0x0(int offerPrice) hasInitialized payable public {
		assert(!(StateEnum == StateType.Accepted));
	}

    enum StateType { 
      ItemAvailable,
      OfferPlaced,
      Accepted
    }

    address public InstanceOwner;
    string public Description;
    int public AskingPrice;
    StateType public StateEnum;
    int256[][] result;

    address public InstanceBuyer;
    int public OfferPrice;

    function my_constructor(string memory description, int price, address sender) hasNotInitialized public
    {
        InstanceOwner = sender;
        AskingPrice = price;
        Description = description;
        StateEnum = StateType.ItemAvailable;
				has_initialized = true;
    }

}