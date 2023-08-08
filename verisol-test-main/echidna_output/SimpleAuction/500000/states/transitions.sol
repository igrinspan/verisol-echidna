// SPDX-License-Identifier: UNLICENSED 
/**
 *Submitted for verification at Etherscan.io on 2017-08-04
*/

pragma solidity >=0.4.25 <0.9.0;

contract SimpleAuction {
	modifier hasInitialized {
		require(has_initialized);
		_;
	}

	modifier hasNotInitialized {
		require(!has_initialized);
		_;
	}

	bool has_initialized = false;

	function vc0x0x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc0x0x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc0x0x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc0x1x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc0x1x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc0x1x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc0x2x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc0x2x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc0x2x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc0x3x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc0x3x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc0x3x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc0x4x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc0x4x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc0x4x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc0x5x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc0x5x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc0x5x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc1x0x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc1x0x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc1x0x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc1x1x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc1x1x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc1x1x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc1x2x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc1x2x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc1x2x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc1x3x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc1x3x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc1x3x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc1x4x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc1x4x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc1x4x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc1x5x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc1x5x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc1x5x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc2x0x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc2x0x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc2x0x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc2x1x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc2x1x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc2x1x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc2x2x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc2x2x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc2x2x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc2x3x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc2x3x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc2x3x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc2x4x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc2x4x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc2x4x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc2x5x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc2x5x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc2x5x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc3x0x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc3x0x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc3x0x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc3x1x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc3x1x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc3x1x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc3x2x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc3x2x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc3x2x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc3x3x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc3x3x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc3x3x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc3x4x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc3x4x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc3x4x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc3x5x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc3x5x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc3x5x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder == highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc4x0x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc4x0x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc4x0x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc4x1x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc4x1x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc4x1x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc4x2x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc4x2x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc4x2x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc4x3x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc4x3x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc4x3x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc4x4x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc4x4x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc4x4x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc4x5x0(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc4x5x1(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc4x5x2(address refundee) hasInitialized payable public {
		require(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc5x0x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc5x0x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc5x0x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc5x1x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc5x1x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc5x1x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder == address(0x0) && pendingReturnsArray.length == 0&& true));
	}
	function vc5x2x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc5x2x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc5x2x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc5x3x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc5x3x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc5x3x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder == highestBidderA&& true));
	}
	function vc5x4x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc5x4x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc5x4x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(!ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc5x5x0(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		bid();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc5x5x1(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		withdraw();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
	function vc5x5x2(address refundee) hasInitialized payable public {
		require(ended && highestBidder != address(0x0) && highestBidder != highestBidderA);
		auctionEnd();
		assert(!(ended && highestBidder != address(0x0) && highestBidder != highestBidderA&& true));
	}
    // 
    // This is an auction where UNICEF is the beneficiary 
    //
    // The highest bidder of this auction is entiteled to Poster Number one of the worlds first Ehtereum funded movie The-Pitt-Circus Movie. 
    // The Poster is a limited editions serigraphy (numbered and signed by the artist).
    // To claim the poster the highest bidder can get in touch with the-pitts-circus.com or send the address an data-field transation to the contract of the beneficiary = 0xb23397f97715118532c8c1207F5678Ed4FbaEA6c after the auction has ended
    // 
    // 
    //
    //Parameters of the auction. Times are either
    // absolute unix timestamps (seconds since 1970-01-01)
    // or time periods in seconds.
    // 
      
    uint public auctionStart;
    uint public biddingTime;

    // Current state of the auction.
    address public highestBidder = address(0x0);
    address public highestBidderA;
    uint public highestBid;
    uint time;

    // Allowed withdrawals of previous bids
    mapping(address => uint) pendingReturns;
    uint pendingReturnsCount = 0;
    address[] pendingReturnsArray = new address[](0);
    address[] auxArray;

    // Set to true at the end, disallows any change
    bool ended;

    // Events that will be fired on changes.
    event HighestBidIncreased(address bidder, uint amount);
    event AuctionEnded(address winner, uint amount);

    // The following is a so-called natspec comment,
    // recognizable by the three slashes.
    // It will be shown when the user is asked to
    // confirm a transaction.

    // Create a simple auction with `_biddingTime`
    // seconds bidding time on behalf of the
    // beneficiary address `_beneficiary`.
    
    address payable _beneficiary = payable(address(0xb23397f97715118532c8c1207F5678Ed4FbaEA6c));
    // UNICEF Multisig Wallet according to:
    // unicefstories.org/2017/08/04/unicef-ventures-exploring-smart-contracts/
    address payable beneficiary;
    
    function my_constructor(uint _time, uint _biddingTime, uint _auctionStart, address _highestBidderA) hasNotInitialized public
    {
        time = _time;
        beneficiary = _beneficiary;
        auctionStart = _auctionStart;
        biddingTime = _biddingTime;
        highestBidderA = _highestBidderA;
				has_initialized = true;
    }

    // Bid on the auction with the value sent
    // together with this transaction.
    // The value will only be refunded if the
    // auction is not won.
    function bid() hasInitialized public payable {
        // No arguments are necessary, all
        // information is already part of
        // the transaction. The keyword payable
        // is required for the function to
        // be able to receive Ether.

        // Revert the call if the bidding
        // period is over.
        require(time <= (auctionStart + biddingTime));

        // If the bid is not higher, send the
        // money back.
        require(msg.value > highestBid);

        if (highestBidder != address(0x0)) {
            // Sending back the money by simply using
            // highestBidder.send(highestBid) is a security risk
            // because it can be prevented by the caller by e.g.
            // raising the call stack to 1023. It is always safer
            // to let the recipients withdraw their money themselves.
            pendingReturns[highestBidder] += highestBid;
            pendingReturnsCount = pendingReturnsCount + 1;
            pendingReturnsArray.push(msg.sender);
        }
        highestBidder = msg.sender;
        highestBid = msg.value;
        // emit HighestBidIncreased(msg.sender, msg.value);
        t();
    }

    // Withdraw a bid that was overbid.
    function withdraw() hasInitialized public returns (bool) {
        //time = time + 1;
        require(pendingReturnsArray.length != 0);
        uint amount = pendingReturns[msg.sender];
        if (amount > 0) {
            // It is important to set this to zero because the recipient
            // can call this function again as part of the receiving call
            // before `send` returns.
            pendingReturns[msg.sender] = 0;
            pendingReturnsCount = pendingReturnsCount - 1;
            pendingReturnsArray = remove(msg.sender, pendingReturnsArray);

            // if (!msg.sender.send(amount)) {
            //     // No need to call throw here, just reset the amount owing
            //     pendingReturns[msg.sender] = amount;
            //     time = now;
            //     return false;
            // }
        }
        t();
        return true;
    }
    // Users want to know when the auction ends, seconds from 1970-01-01
    function auctionEndTime() hasInitialized public view returns (uint256) {
        return auctionStart + biddingTime;
    }
    
    // End the auction and send the highest bid
    // to the beneficiary.
    function auctionEnd() hasInitialized public {
        // It is a good guideline to structure functions that interact
        // with other contracts (i.e. they call functions or send Ether)
        // into three phases:
        // 1. checking conditions
        // 2. performing actions (potentially changing conditions)
        // 3. interacting with other contracts
        // If these phases are mixed up, the other contract could call
        // back into the current contract and modify the state or cause
        // effects (ether payout) to be performed multiple times.
        // If functions called internally include interaction with external
        // contracts, they also have to be considered interaction with
        // external contracts.
        // 1. Conditions
        require(time >= (auctionStart + biddingTime)); // auction did not yet end
        require(!ended); // this function has already been called
        // 2. Effects
        ended = true;
        // emit AuctionEnded(highestBidder, highestBid);

        // 3. Interaction
        // beneficiary.transfer(highestBid);
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

    function t() hasInitialized public {
        time = time + 1;
    }
}