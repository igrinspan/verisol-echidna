// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Crowdfunding {
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
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc0x0x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc0x0x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc0x0x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc0x1x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc0x1x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc0x1x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc0x1x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc0x2x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Donate();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x2x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		GetFunds();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x2x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Claim();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x2x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		t();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x3x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Donate();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x3x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x3x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Claim();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x3x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		t();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x4x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Donate();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x4x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x4x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		Claim();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc0x4x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0));
		t();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x0x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc1x0x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc1x0x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc1x0x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc1x1x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc1x1x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc1x1x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc1x1x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc1x2x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Donate();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x2x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		GetFunds();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x2x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Claim();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x2x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		t();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x3x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Donate();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x3x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x3x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Claim();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x3x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		t();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x4x0() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Donate();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x4x1() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x4x2() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		Claim();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc1x4x3() hasInitialized payable public {
		require((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
		t();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x0x0() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc2x0x1() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc2x0x2() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc2x0x3() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc2x1x0() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc2x1x1() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc2x1x2() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc2x1x3() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc2x2x0() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x2x1() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x2x2() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x2x3() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x3x0() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x3x1() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x3x2() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x3x3() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x4x0() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x4x1() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x4x2() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc2x4x3() hasInitialized payable public {
		require((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x0x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc3x0x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc3x0x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc3x0x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc3x1x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc3x1x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc3x1x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc3x1x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc3x2x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x2x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x2x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x2x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x3x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x3x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x3x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x3x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x4x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x4x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x4x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc3x4x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x0x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc4x0x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc4x0x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc4x0x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)&& true));
	}
	function vc4x1x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc4x1x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc4x1x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc4x1x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)&& true));
	}
	function vc4x2x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x2x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x2x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x2x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!((max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x3x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x3x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x3x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x3x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!(!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x4x0() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Donate();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x4x1() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		GetFunds();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x4x2() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		Claim();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}
	function vc4x4x3() hasInitialized payable public {
		require(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0));
		t();
		assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)&& true));
	}

    address payable owner;
    uint max_block;
    uint goal;
    uint blockNumber;
    uint balance;

    mapping(address => uint) backers;
    address[] backersArray = new address[](0);
    address[] auxArray;
    bool funded = false;

    // function a() hasInitialized public {
    //     assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
    //     assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0 )) ;
    // }
    constructor () payable {}

    function my_constructor(uint _max_block, uint _blockNumber, uint _goal, uint _balance) public {
		require(!has_initialized);
        owner = payable(msg.sender) ; 
        max_block = _max_block;
        goal = _goal;
        balance = _balance;
        blockNumber = _blockNumber;
		has_initialized = true;
    }

    function Donate() hasInitialized public payable {
        if(max_block <= blockNumber) {
            revert();
        }
        else {
            if(backers[msg.sender] == 0) {
                backers[msg.sender] = msg.value;
                backersArray.push(msg.sender);
                balance = balance + msg.value;
                //t();
            }
            else {
                revert();
            }
        }
    }

    function GetFunds() hasInitialized public {
        if(max_block < blockNumber && msg.sender == owner) {
            if(goal <= balance) {
                funded = true;
                //owner.transfer(balance);
                balance = 0;
                //t();
            }
            else {
                revert();
            }
        }
        else {
            revert();
        }
    }

    function Claim() hasInitialized public {
        if(blockNumber <= max_block) {
            revert();
        }
        else {
            if(backers[msg.sender] == 0 || backersArray.length == 0 || funded || goal <= balance) {
                revert();
            }
            else {
                uint val = backers[msg.sender];
                backers[msg.sender] = 0;
                backersArray = remove(msg.sender, backersArray);
                //msg.sender.transfer(val);
                balance = balance - val;
                //t();
            }
        }
    }
    
    function remove(address _valueToFindAndRemove, address[] memory _array) hasInitialized public returns(address[] memory) {

        auxArray = new address[](0); 

        for (uint i = 0; i < _array.length; i++){
            if(_array[i] != _valueToFindAndRemove)
                auxArray.push(_array[i]);
        }

        return auxArray;
    }

    function t() hasInitialized public {
        blockNumber = blockNumber + 1;
    }
}