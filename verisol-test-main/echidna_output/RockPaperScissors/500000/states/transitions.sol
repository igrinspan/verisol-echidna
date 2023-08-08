// SPDX-License-Identifier: UNLICENSED 
pragma solidity >=0.4.25 <0.9.0;

contract RockPaperScissors {
	modifier hasInitialized {
		require(has_initialized);
		_;
	}

	modifier hasNotInitialized {
		require(!has_initialized);
		_;
	}

	bool has_initialized = false;

	function vc0x0x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc0x0x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc0x0x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc0x1x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc0x1x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc0x1x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc0x2x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc0x2x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc0x2x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc0x3x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc0x3x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc0x3x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc0x4x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc0x4x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc0x4x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc0x5x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc0x5x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc0x5x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc1x0x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc1x0x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc1x0x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc1x1x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc1x1x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc1x1x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc1x2x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc1x2x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc1x2x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc1x3x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc1x3x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc1x3x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc1x4x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc1x4x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc1x4x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc1x5x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc1x5x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc1x5x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice == -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc2x0x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc2x0x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc2x0x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc2x1x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc2x1x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc2x1x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc2x2x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc2x2x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc2x2x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc2x3x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc2x3x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc2x3x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc2x4x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc2x4x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc2x4x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc2x5x0(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc2x5x1(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc2x5x2(int choice) hasInitialized payable public {
		require(p1Choice == -1 && p2Choice != -1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc3x0x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc3x0x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc3x0x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc3x1x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc3x1x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc3x1x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc3x2x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc3x2x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc3x2x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc3x3x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc3x3x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc3x3x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc3x4x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc3x4x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc3x4x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc3x5x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc3x5x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc3x5x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc4x0x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc4x0x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc4x0x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc4x1x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc4x1x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc4x1x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc4x2x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc4x2x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc4x2x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc4x3x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc4x3x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc4x3x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc4x4x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc4x4x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc4x4x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc4x5x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc4x5x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc4x5x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc5x0x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc5x0x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc5x0x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice == -1&& true));
	}
	function vc5x1x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc5x1x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc5x1x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice == -1&& true));
	}
	function vc5x2x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer1(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc5x2x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer2(choice);
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc5x2x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		determineWinner();
		assert(!(p1Choice == -1 && p2Choice != -1&& true));
	}
	function vc5x3x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc5x3x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc5x3x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1&& true));
	}
	function vc5x4x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc5x4x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc5x4x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2&& true));
	}
	function vc5x5x0(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer1(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc5x5x1(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		choicePlayer2(choice);
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
	function vc5x5x2(int choice) hasInitialized payable public {
		require(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0);
		determineWinner();
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0&& true));
	}
    address payable player1;
    address payable player2;
    address payable owner;

    int p1Choice = -1;
    int p2Choice = -1;
    //mapping(uint => mapping(uint => uint)) payoffMatrix;
    uint[3][3] public  payoffMatrix;

    function my_constructor(address payable _player1, address payable _player2, address payable _owner) hasNotInitialized public {
        player1 = _player1;
        player2 = _player2;
        owner = _owner;

        //Rock - 0
        //Paper - 1
        //Scissors - 2
        payoffMatrix[0][0] = 0;
        payoffMatrix[0][1] = 2;
        payoffMatrix[0][2] = 1;
        payoffMatrix[1][0] = 1;
        payoffMatrix[1][1] = 0;
        payoffMatrix[1][2] = 2;
        payoffMatrix[2][0] = 2;
        payoffMatrix[2][1] = 1;
        payoffMatrix[2][2] = 0;
				has_initialized = true;
    }

    function choicePlayer1(int choice) hasInitialized public {
        if(msg.sender == player1) {
            if(p1Choice == -1 && choice >= 0 && choice <= 2) {
                p1Choice = choice;
            }
            else {
                revert();
            }
        }
        else {
            revert();
        }
    }

    function choicePlayer2(int choice) hasInitialized public {
        if(msg.sender == player2) {
            if(p2Choice == -1 && choice >= 0 && choice <= 2) {
                p2Choice = choice;
            }
            else {
                revert();
            }
        }
        else {
            revert();
        }
    }

    function determineWinner() hasInitialized public {
        if(p1Choice != -1 && p2Choice != -1) {
            uint winner = payoffMatrix[uint(p1Choice)][uint(p2Choice)];
            if(winner == 1) {
                //player1.transfer(address(this).balance);
            }
            else if(winner == 2) {
                //player2.transfer(address(this).balance);
            }
            else {
                //owner.transfer(address(this).balance);
            }
        }
        else {
            revert();
        }
    }
}