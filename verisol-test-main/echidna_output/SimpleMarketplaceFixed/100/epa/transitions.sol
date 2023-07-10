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

	function vc1x0x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced));
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(!(State == StateType.ItemAvailable) && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc1x1x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced));
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc1x2x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced));
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc1x3x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced));
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc2x0x1(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(!(State == StateType.ItemAvailable) && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc2x0x2(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(!(State == StateType.ItemAvailable) && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc2x1x1(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc2x1x2(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc2x2x1(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc2x2x2(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc2x3x1(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc2x3x2(int offerPrice) hasInitialized payable public {
		require(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc3x0x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(!(State == StateType.ItemAvailable) && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc3x0x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(!(State == StateType.ItemAvailable) && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc3x0x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(!(State == StateType.ItemAvailable) && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc3x1x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc3x1x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc3x1x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(State == StateType.ItemAvailable && !(State == StateType.OfferPlaced) && !(State == StateType.OfferPlaced)&& true));
	}
	function vc3x2x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc3x2x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc3x2x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(!(State == StateType.ItemAvailable) && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc3x3x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(offerPrice != 0 && msg.sender != InstanceOwner);
		MakeOffer(offerPrice);
		assert(!(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc3x3x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		AcceptOffer();
		assert(!(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
	}
	function vc3x3x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced);
		require(msg.sender == InstanceOwner);
		Reject();
		assert(!(State == StateType.ItemAvailable && State == StateType.OfferPlaced && State == StateType.OfferPlaced&& true));
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

    function MakeOffer(int offerPrice) hasInitialized public
    {
        if (offerPrice == 0)
        {
            revert();
        }

        if (State != StateType.ItemAvailable)
        {
            revert();
        }
        
        if (InstanceOwner == msg.sender)
        {
            revert();
        }

        InstanceBuyer = msg.sender;
        OfferPrice = offerPrice;
        State = StateType.OfferPlaced;
    }

    function Reject() hasInitialized public
    {
        if ( State != StateType.OfferPlaced )
        {
            revert();
        }

        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        InstanceBuyer = address(0);
        State = StateType.ItemAvailable;
    }

    function AcceptOffer() hasInitialized public
    {
        if ( msg.sender != InstanceOwner )
        {
            revert();
        }

        //FIX: Add precondition
        if ( State != StateType.OfferPlaced )
        {
            revert();
        }

        State = StateType.Accepted;
    }
}