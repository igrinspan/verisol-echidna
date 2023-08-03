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

	function vc1x0x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc1x1x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc1x2x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc1x3x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc1x4x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc1x5x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc1x6x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc1x7x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc2x0x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc2x1x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc2x2x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc2x3x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc2x4x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc2x5x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc2x6x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc2x7x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc3x0x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc3x1x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc3x2x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc3x3x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc3x4x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc3x5x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc3x6x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc3x7x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x0x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x0x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x1x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x1x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x2x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x2x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x3x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x3x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x4x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x4x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc4x5x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x5x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x6x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x6x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x7x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc4x7x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime))));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x0x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x0x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x1x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x1x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x2x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x2x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x3x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x3x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x4x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x4x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc5x5x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x5x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x6x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x6x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x7x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc5x7x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x0x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x0x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x1x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x1x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x2x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x2x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x3x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x3x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x4x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x4x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc6x5x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x5x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x6x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x6x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x7x1() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc6x7x2() hasInitialized payable public {
		require(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x0x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x0x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x0x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x1x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x1x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x1x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x2x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x2x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x2x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x3x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x3x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x3x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x4x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x4x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x4x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && !((ended && blockNumber > (auctionStart + biddingTime)))&& true));
	}
	function vc7x5x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x5x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x5x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && !(pendingReturnsArray.length != 0) && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x6x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x6x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x6x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!(!((!ended && (auctionStart + biddingTime) >= blockNumber)) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x7x0() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(msg.value > highestBid);
		Bid();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x7x1() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		require(pendingReturns[msg.sender] != 0);
		Withdraw();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
	}
	function vc7x7x2() hasInitialized payable public {
		require((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime)));
		AuctionEnd();
		assert(!((!ended && (auctionStart + biddingTime) >= blockNumber) && pendingReturnsArray.length != 0 && (ended && blockNumber > (auctionStart + biddingTime))&& true));
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