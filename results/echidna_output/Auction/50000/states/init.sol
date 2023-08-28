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
		assert(!(State == StateType.Active));
	}
	function vc1x0x0() hasInitialized payable public {
		assert(!(State == StateType.OfferPlaced));
	}
	function vc2x0x0() hasInitialized payable public {
		assert(!(State == StateType.PendingInspection));
	}
	function vc3x0x0() hasInitialized payable public {
		assert(!(State == StateType.Inspected));
	}
	function vc4x0x0() hasInitialized payable public {
		assert(!(State == StateType.Appraised));
	}
	function vc5x0x0() hasInitialized payable public {
		assert(!(State == StateType.NotionalAcceptance));
	}
	function vc6x0x0() hasInitialized payable public {
		assert(!(State == StateType.BuyerAccepted));
	}
	function vc7x0x0() hasInitialized payable public {
		assert(!(State == StateType.SellerAccepted));
	}
	function vc8x0x0() hasInitialized payable public {
		assert(!(State == StateType.Accepted));
	}
	function vc9x0x0() hasInitialized payable public {
		assert(!(State == StateType.Terminated));
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

}