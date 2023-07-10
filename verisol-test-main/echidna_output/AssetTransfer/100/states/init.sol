pragma solidity >=0.4.25 <0.9.0;

contract AssetTransfer {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.Active));
	}
	function vc1x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.OfferPlaced));
	}
	function vc2x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.PendingInspection));
	}
	function vc3x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.Inspected));
	}
	function vc4x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.Appraised));
	}
	function vc5x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.NotionalAcceptance));
	}
	function vc6x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.BuyerAccepted));
	}
	function vc7x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.SellerAccepted));
	}
	function vc8x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.Accepted));
	}
	function vc9x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		assert(!(State == StateType.Terminated));
	}

    enum StateType { Active, OfferPlaced, PendingInspection, Inspected, Appraised, NotionalAcceptance, BuyerAccepted, SellerAccepted, Accepted, Terminated }
    address public InstanceOwner;
    string public Description;
    uint public AskingPrice;
    StateType public State;

    address public InstanceBuyer;
    uint public OfferPrice;
    address public InstanceInspector;
    address public InstanceAppraiser;

    function my_constructor(string memory description, uint256 price) hasNotInitialized public
    {
        InstanceOwner = msg.sender;
        AskingPrice = price;
        Description = description;
        State = StateType.Active;
        // ContractCreated();
				has_initialized = true;
    }

}