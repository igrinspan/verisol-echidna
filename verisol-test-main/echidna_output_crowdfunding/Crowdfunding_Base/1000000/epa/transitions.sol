pragma solidity ^0.5.0;

contract CrowdfundingBase {
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
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc1x1x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc1x2x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc1x3x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc1x4x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc1x5x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc1x6x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc1x7x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc2x0x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc2x1x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc2x2x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc2x3x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc2x4x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc2x5x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc2x6x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc2x7x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc3x0x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc3x1x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc3x2x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc3x3x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc3x4x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc3x5x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc3x6x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc3x7x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x0x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x0x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x1x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x1x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x2x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x2x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x3x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x3x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x4x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x4x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc4x5x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x5x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x6x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x6x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x7x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc4x7x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x0x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x0x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x1x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x1x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x2x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x2x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x3x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x3x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x4x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x4x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc5x5x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x5x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x6x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x6x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x7x0() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc5x7x2() hasInitialized payable public {
		require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x0x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x0x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x1x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x1x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x2x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x2x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x3x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x3x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x4x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x4x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc6x5x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x5x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x6x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x6x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x7x1() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc6x7x2() hasInitialized payable public {
		require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x0x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x0x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x0x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x1x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x1x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x1x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x2x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x2x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x2x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x3x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x3x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x3x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x4x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x4x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x4x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))&& true));
	}
	function vc7x5x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x5x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x5x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x6x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x6x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x6x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x7x0() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] == 0);
		Donate();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x7x1() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(msg.sender == owner);
		GetFunds();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
	function vc7x7x2() hasInitialized payable public {
		require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0));
		require(backers[msg.sender] != 0);
		Claim();
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)&& true));
	}
    address payable owner;
    uint max_block;
    uint goal;
    uint blockNumber;
    
    mapping ( address => uint ) backers;
    // address[] backersArray = new address[](0);
    // address[] auxArray;
    uint countBackers = 0;
    bool funded = false;
    uint balance = 0;

    function my_constructor ( address payable _owner , uint _max_block , uint _goal, uint _blockNumber) hasNotInitialized public {
        owner = _owner;
        max_block = _max_block;
        goal = _goal;
        balance = 0;
        blockNumber = _blockNumber;
				has_initialized = true;
    }

    function Donate () hasInitialized public payable {
        require ( max_block > blockNumber);
        require ( backers [msg.sender] == 0);
        backers [msg.sender] = msg.value;
        if (msg.value > 0) {
            // backersArray.push(msg.sender);
            countBackers += 1;
            balance = balance + msg.value;
        }
        t();
    }

    function GetFunds () hasInitialized public {
        require (max_block < blockNumber);
        require (msg.sender == owner);
        require (goal <= balance);
        // owner.call.value(balance)("");
        funded = true;
        balance = 0;
        t();
    }

    function Claim () hasInitialized public {
        require (max_block < blockNumber);
        require (backers[msg.sender] > 0 && !funded);
        require (goal > balance);
        // require (backersArray.length > 0);
        require (countBackers > 0);
        uint val = backers[msg.sender];
        // msg.sender.call.value(val)("");
        backers[msg.sender] = 0;
        countBackers -= 1;
        // backersArray = remove(msg.sender, backersArray);
        balance = balance - val;
        t();
    }

    // function remove(address _valueToFindAndRemove, address[] memory _array) public  returns(address[] memory) {
    //     auxArray = new address[](0); 
    //     for (uint i = 0; i < _array.length; i++){
    //         if(_array[i] != _valueToFindAndRemove)
    //             auxArray.push(_array[i]);
    //     }
    //     return auxArray;
    // }
    function t() hasInitialized public {
        blockNumber = blockNumber + 2;
    }
 }