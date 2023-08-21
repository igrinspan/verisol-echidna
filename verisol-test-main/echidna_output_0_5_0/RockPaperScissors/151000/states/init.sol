pragma solidity ^0.5.0;

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
		assert(!(p1Choice == -1 && p2Choice == -1));
	}
	function vc1x0x0(int choice) hasInitialized payable public {
		assert(!(p1Choice != -1 && p2Choice == -1));
	}
	function vc2x0x0(int choice) hasInitialized payable public {
		assert(!(p1Choice == -1 && p2Choice != -1));
	}
	function vc3x0x0(int choice) hasInitialized payable public {
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 1));
	}
	function vc4x0x0(int choice) hasInitialized payable public {
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 2));
	}
	function vc5x0x0(int choice) hasInitialized payable public {
		assert(!(p1Choice != -1 && p2Choice != -1 && payoffMatrix[uint(p1Choice)][uint(p2Choice)] == 0));
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

}