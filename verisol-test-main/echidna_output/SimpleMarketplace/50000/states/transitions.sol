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
		require(StateEnum == StateType.ItemAvailable);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc0x0x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		AcceptOffer();
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc0x0x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		Reject();
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc0x1x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc0x1x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		AcceptOffer();
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc0x1x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		Reject();
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc0x2x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc0x2x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		AcceptOffer();
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc0x2x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.ItemAvailable);
		Reject();
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc1x0x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc1x0x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc1x0x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		Reject();
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc1x1x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc1x1x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc1x1x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		Reject();
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc1x2x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc1x2x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc1x2x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.OfferPlaced);
		Reject();
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc2x0x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc2x0x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		AcceptOffer();
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc2x0x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		Reject();
		assert(!(StateEnum == StateType.ItemAvailable&& true));
	}
	function vc2x1x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc2x1x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		AcceptOffer();
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc2x1x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		Reject();
		assert(!(StateEnum == StateType.OfferPlaced&& true));
	}
	function vc2x2x0(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		MakeOffer(offerPrice);
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc2x2x1(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		AcceptOffer();
		assert(!(StateEnum == StateType.Accepted&& true));
	}
	function vc2x2x2(int offerPrice) hasInitialized payable public {
		require(StateEnum == StateType.Accepted);
		Reject();
		assert(!(StateEnum == StateType.Accepted&& true));
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

    function MakeOffer(int offerPrice) hasInitialized public
    {
        if (offerPrice == 0)
        {
            revert();
        }

        if (StateEnum != StateType.ItemAvailable)
        {
            revert();
        }
        
        if (InstanceOwner == msg.sender)
        {
            revert();
        }

        InstanceBuyer = msg.sender;
        OfferPrice = offerPrice;
        StateEnum = StateType.OfferPlaced;
    }

    function Reject() hasInitialized public
    {
        if ( StateEnum != StateType.OfferPlaced )
        {
            revert();
        }

        if (InstanceOwner != msg.sender)
        {
            revert();
        }

       //InstanceBuyer = 0x0;
        StateEnum = StateType.ItemAvailable;
    }

    function AcceptOffer() hasInitialized public
    {
        if ( msg.sender != InstanceOwner )
        {
            revert();
        }

        StateEnum = StateType.Accepted;
    }
}