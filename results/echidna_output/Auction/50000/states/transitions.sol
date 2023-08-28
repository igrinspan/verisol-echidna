pragma solidity >=0.4.25 <0.9.0;

// bugs:
// 1. Auction can never end
// 2. highest bidder can never be refunded their highest bid

contract Auction {
	modifier hasInitialized {
		require(has_initialized);
		_;
	}

	modifier hasNotInitialized {
		require(!has_initialized);
		_;
	}

	bool has_initialized = false;

	function vc0x0x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x0x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc0x1x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x1x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc0x2x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x2x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc0x3x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x3x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc0x4x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x4x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc0x5x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x5x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc0x6x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x6x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc0x7x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x7x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc0x8x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x8x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc0x9x0() hasInitialized payable public {
		require(State == StateType.Active);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x1() hasInitialized payable public {
		require(State == StateType.Active);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x9x2() hasInitialized payable public {
		require(State == StateType.Active);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x0x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x0x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc1x1x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x1x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc1x2x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x2x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc1x3x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x3x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc1x4x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x4x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc1x5x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x5x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc1x6x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x6x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc1x7x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x7x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc1x8x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x8x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc1x9x0() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x1() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x9x2() hasInitialized payable public {
		require(State == StateType.OfferPlaced);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x0x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x0x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc2x1x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x1x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc2x2x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x2x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc2x3x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x3x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc2x4x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x4x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc2x5x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x5x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc2x6x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x6x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc2x7x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x7x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc2x8x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x8x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc2x9x0() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x1() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x9x2() hasInitialized payable public {
		require(State == StateType.PendingInspection);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x0x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x0x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc3x1x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x1x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc3x2x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x2x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc3x3x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x3x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc3x4x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x4x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc3x5x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x5x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc3x6x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x6x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc3x7x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x7x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc3x8x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x8x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc3x9x0() hasInitialized payable public {
		require(State == StateType.Inspected);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x1() hasInitialized payable public {
		require(State == StateType.Inspected);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x9x2() hasInitialized payable public {
		require(State == StateType.Inspected);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x0x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x0x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc4x1x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x1x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc4x2x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x2x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc4x3x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x3x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc4x4x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x4x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc4x5x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x5x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc4x6x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x6x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc4x7x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x7x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc4x8x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x8x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc4x9x0() hasInitialized payable public {
		require(State == StateType.Appraised);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x1() hasInitialized payable public {
		require(State == StateType.Appraised);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x9x2() hasInitialized payable public {
		require(State == StateType.Appraised);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x0x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x0x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc5x1x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x1x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc5x2x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x2x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc5x3x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x3x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc5x4x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x4x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc5x5x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x5x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc5x6x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x6x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc5x7x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x7x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc5x8x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x8x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc5x9x0() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x1() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x9x2() hasInitialized payable public {
		require(State == StateType.NotionalAcceptance);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x0x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x0x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc6x1x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x1x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc6x2x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x2x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc6x3x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x3x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc6x4x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x4x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc6x5x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x5x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc6x6x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x6x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc6x7x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x7x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc6x8x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x8x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc6x9x0() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x1() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc6x9x2() hasInitialized payable public {
		require(State == StateType.BuyerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x0x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x0x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc7x1x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x1x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc7x2x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x2x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc7x3x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x3x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc7x4x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x4x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc7x5x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x5x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc7x6x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x6x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc7x7x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x7x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc7x8x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x8x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc7x9x0() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x1() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc7x9x2() hasInitialized payable public {
		require(State == StateType.SellerAccepted);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x0x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x0x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc8x1x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x1x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc8x2x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x2x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc8x3x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x3x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc8x4x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x4x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc8x5x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x5x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc8x6x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x6x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc8x7x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x7x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc8x8x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x8x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc8x9x0() hasInitialized payable public {
		require(State == StateType.Accepted);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x1() hasInitialized payable public {
		require(State == StateType.Accepted);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc8x9x2() hasInitialized payable public {
		require(State == StateType.Accepted);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x0x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x0x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.Active&& true));
	}
	function vc9x1x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x1x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.OfferPlaced&& true));
	}
	function vc9x2x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x2x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.PendingInspection&& true));
	}
	function vc9x3x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x3x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.Inspected&& true));
	}
	function vc9x4x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x4x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.Appraised&& true));
	}
	function vc9x5x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x5x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.NotionalAcceptance&& true));
	}
	function vc9x6x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x6x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.BuyerAccepted&& true));
	}
	function vc9x7x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x7x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.SellerAccepted&& true));
	}
	function vc9x8x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x8x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.Accepted&& true));
	}
	function vc9x9x0() hasInitialized payable public {
		require(State == StateType.Terminated);
		Bid();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x1() hasInitialized payable public {
		require(State == StateType.Terminated);
		Withdraw();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc9x9x2() hasInitialized payable public {
		require(State == StateType.Terminated);
		AuctionEnd();
		assert(!(State == StateType.Terminated&& true));
	}
    uint auctionStart;
    uint biddingTime;
    address payable beneficiary;

    bool ended = false;
    address payable highestBidder = address(0x0);
    address payable A = address(0x0);
    uint highestBid = 0;
    mapping(address => uint) pendingReturns;
    address[] pendingReturnsArray = new address[](0);
    address[] auxArray;
    uint pendingReturnsCount = 0;
    uint blockNumber;

    function my_constructor(uint _auctionStart, uint _biddingTime, address payable _beneficiary, address payable payable_a,  uint _blockNumber) hasNotInitialized public {
        auctionStart = _auctionStart;
        biddingTime = _biddingTime;
        beneficiary = _beneficiary;
        blockNumber = _blockNumber;
				has_initialized = true;
    }

    function Bid() hasInitialized public payable {
        uint end = auctionStart + biddingTime;
        if(end < blockNumber || ended) {
            revert();
        }
        else {
            if(msg.value <= highestBid) {
                revert();
            }
            else {
                pendingReturns[highestBidder] += highestBid;
                pendingReturnsCount = 2;
                if (highestBidder != address(0x0)) {
                    pendingReturnsArray.push(highestBidder);
                }
                highestBidder = msg.sender;
                highestBid = msg.value;
            }
        }
        t();
    }

    function Withdraw() hasInitialized public {
        if(pendingReturns[msg.sender] != 0 && pendingReturnsArray.length != 0) {
            uint pr = pendingReturns[msg.sender];
            pendingReturns[msg.sender] = 0;
            pendingReturnsCount = pendingReturnsCount - 1;
            pendingReturnsArray = remove(msg.sender, pendingReturnsArray);
            //msg.sender.transfer(pr);  
        }
        else {
            revert();
        }
        t();
    }

    function remove(address _valueToFindAndRemove, address[] memory _array) hasInitialized public  returns(address[] memory) {

        auxArray = new address[](0); 

        for (uint i = 0; i < _array.length; i++){
             if(_array[i] != _valueToFindAndRemove) 
                auxArray.push(_array[i]);
        }

        return auxArray;
    }

    function AuctionEnd() hasInitialized public {
        uint end = auctionStart + biddingTime;

        //!ended is a bug
        if(blockNumber <= end || !ended) {
            revert();
        }
        else {
            ended = true;
            //beneficiary.transfer(highestBid);
        }
        t();
    }

    function t() hasInitialized public {
        blockNumber = blockNumber + 1;
    }
}