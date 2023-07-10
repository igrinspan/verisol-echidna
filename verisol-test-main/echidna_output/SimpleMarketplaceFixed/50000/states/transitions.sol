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
		require(State == StateType.ItemAvailable);
		MakeOffer(offerPrice);
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc0x0x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		AcceptOffer();
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc0x0x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		Reject();
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc0x1x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		MakeOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x2x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		MakeOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x2x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x2x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.ItemAvailable);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x0x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(offerPrice);
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc1x0x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc1x0x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc1x1x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x2x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x2x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x2x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x0x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(offerPrice);
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc2x0x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc2x0x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.ItemAvailable&& true));
	}
	function vc2x1x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x2x0(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x2x1(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x2x2(int offerPrice) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.Accepted&& true));
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