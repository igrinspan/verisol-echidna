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
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Active);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.PendingInspection);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Inspected);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Appraised);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Accepted);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x5x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x6x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x7x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x8x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x9x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x1(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Modify(price);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x2(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MakeOffer(inspector, appraiser, offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x3(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x4(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Reject();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		Accept();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x6(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		ModifyOffer(offerPrice);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		RescindOffer();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkAppraised();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) hasInitialized payable public {
		require(State == StateType.Terminated);
		MarkInspected();
		assert(!(State == StateType.Terminated&& true));
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

    function Terminate() hasInitialized public
    {
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        State = StateType.Terminated;
        // ContractUpdated('Terminate');
    }

    function Modify(uint256 price) hasInitialized public
    {
        if (State != StateType.Active)
        {
            revert();
        }
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        // Description = description;
        AskingPrice = price;
        // ContractUpdated('Modify');
    }

    function MakeOffer(address inspector, address appraiser, uint256 offerPrice) hasInitialized public
    {
        if (inspector == address(0x0) || appraiser == address(0x0) || offerPrice == 0)
        {
            revert();
        }
        if (State != StateType.Active)
        {
            revert();
        }
        // Cannot enforce "AllowedRoles":["Buyer"] because Role information is unavailable
        if (InstanceOwner == msg.sender) // not expressible in the current specification language
        {
            revert();
        }

        InstanceBuyer = msg.sender;
        InstanceInspector = inspector;
        InstanceAppraiser = appraiser;
        OfferPrice = offerPrice;
        State = StateType.OfferPlaced;
        // ContractUpdated('MakeOffer');
    }

    function AcceptOffer() hasInitialized public
    {
        if (State != StateType.OfferPlaced)
        {
            revert();
        }
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        State = StateType.PendingInspection;
        // ContractUpdated('AcceptOffer');
    }

    function Reject() hasInitialized public
    {
        if (State != StateType.OfferPlaced && State != StateType.PendingInspection && State != StateType.Inspected && State != StateType.Appraised && State != StateType.NotionalAcceptance && State != StateType.BuyerAccepted)
        {
            revert();
        }
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        InstanceBuyer = address(0x0);
        State = StateType.Active;
        // ContractUpdated('Reject');
    }

    function Accept() hasInitialized public
    {
        if (msg.sender != InstanceBuyer && msg.sender != InstanceOwner)
        {
            revert();
        }

        if (msg.sender == InstanceOwner &&
            State != StateType.NotionalAcceptance &&
            State != StateType.BuyerAccepted)
        {
            revert();
        }

        if (msg.sender == InstanceBuyer &&
            State != StateType.NotionalAcceptance &&
            State != StateType.SellerAccepted)
        {
            revert();
        }

        if (msg.sender == InstanceBuyer)
        {
            if (State == StateType.NotionalAcceptance)
            {
                State = StateType.BuyerAccepted;
            }
            else if (State == StateType.SellerAccepted)
            {
                State = StateType.Accepted;
            }
        }
        else
        {
            if (State == StateType.NotionalAcceptance)
            {
                State = StateType.SellerAccepted;
            }
            else if (State == StateType.BuyerAccepted)
            {
                State = StateType.Accepted;
            }
        }
        // ContractUpdated('Accept');
    }

    function ModifyOffer(uint256 offerPrice) hasInitialized public
    {
        if (State != StateType.OfferPlaced)
        {
            revert();
        }
        if (InstanceBuyer != msg.sender || offerPrice == 0)
        {
            revert();
        }

        OfferPrice = offerPrice;
        // ContractUpdated('ModifyOffer');
    }

    function RescindOffer() hasInitialized public
    {
        if (State != StateType.OfferPlaced && State != StateType.PendingInspection && State != StateType.Inspected && State != StateType.Appraised && State != StateType.NotionalAcceptance && State != StateType.SellerAccepted)
        {
            revert();
        }
        if (InstanceBuyer != msg.sender)
        {
            revert();
        }

        InstanceBuyer = address(0x0);
        OfferPrice = 0;
        State = StateType.Active;
        // ContractUpdated('RescindOffer');
    }

    function MarkAppraised() hasInitialized public
    {
        if (InstanceAppraiser != msg.sender)
        {
            revert();
        }

        if (State == StateType.PendingInspection)
        {
            State = StateType.Appraised;
        }
        else if (State == StateType.Inspected)
        {
            State = StateType.NotionalAcceptance;
        }
        else
        {
            revert();
        }
        // ContractUpdated('MarkAppraised');
    }

    function MarkInspected() hasInitialized public
    {
        if (InstanceInspector != msg.sender)
        {
            revert();
        }

        if (State == StateType.PendingInspection)
        {
            State = StateType.Inspected;
        }
        else if (State == StateType.Appraised)
        {
            State = StateType.NotionalAcceptance;
        }
        else
        {
            revert();
        }
        // ContractUpdated('MarkInspected');
    }
}