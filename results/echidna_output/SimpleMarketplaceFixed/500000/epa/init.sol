pragma solidity >=0.4.25 <0.9.0;

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
		assert(!(!(State == StateType.ItemAvailable) && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)));
	}
	function vc1x0x0(int offerPrice) hasInitialized payable public {
		assert(!(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)));
	}
	function vc2x0x0(int offerPrice) hasInitialized payable public {
		assert(!(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced));
	}
	function vc3x0x0(int offerPrice) hasInitialized payable public {
		assert(!(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced));
	}
    enum StateType { 
      ItemAvailable,
      OfferPlaced,
      Accepted
    }

    address InstanceOwner;
    int AskingPrice;
    StateType State;

    address InstanceBuyer;
    int OfferPrice;

    function my_constructor(int price) hasNotInitialized public
    {
        InstanceOwner = msg.sender;
        AskingPrice = price;
        State = StateType.ItemAvailable;
				has_initialized = true;
    }

}