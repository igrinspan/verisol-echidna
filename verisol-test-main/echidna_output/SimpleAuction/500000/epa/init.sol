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
		assert(!(!(time <= (auctionStart + biddingTime)) && !(pendingReturnsArray.length != 0) && !(!ended && time >= (auctionStart + biddingTime))));
	}
	function vc1x0x0(address refundee) hasInitialized payable public {
		assert(!(time <= (auctionStart + biddingTime) && !(pendingReturnsArray.length != 0) && !(!ended && time >= (auctionStart + biddingTime))));
	}
	function vc2x0x0(address refundee) hasInitialized payable public {
		assert(!(!(time <= (auctionStart + biddingTime)) && pendingReturnsArray.length != 0 && !(!ended && time >= (auctionStart + biddingTime))));
	}
	function vc3x0x0(address refundee) hasInitialized payable public {
		assert(!(!(time <= (auctionStart + biddingTime)) && !(pendingReturnsArray.length != 0) && !ended && time >= (auctionStart + biddingTime)));
	}
	function vc4x0x0(address refundee) hasInitialized payable public {
		assert(!(time <= (auctionStart + biddingTime) && pendingReturnsArray.length != 0 && !(!ended && time >= (auctionStart + biddingTime))));
	}
	function vc5x0x0(address refundee) hasInitialized payable public {
		assert(!(time <= (auctionStart + biddingTime) && !(pendingReturnsArray.length != 0) && !ended && time >= (auctionStart + biddingTime)));
	}
	function vc6x0x0(address refundee) hasInitialized payable public {
		assert(!(!(time <= (auctionStart + biddingTime)) && pendingReturnsArray.length != 0 && !ended && time >= (auctionStart + biddingTime)));
	}
	function vc7x0x0(address refundee) hasInitialized payable public {
		assert(!(time <= (auctionStart + biddingTime) && pendingReturnsArray.length != 0 && !ended && time >= (auctionStart + biddingTime)));
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

}