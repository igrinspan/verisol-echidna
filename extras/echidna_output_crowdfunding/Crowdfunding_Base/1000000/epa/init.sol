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

	function vc0x0x0() hasInitialized payable public {
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))));
	}
	function vc1x0x0() hasInitialized payable public {
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))));
	}
	function vc2x0x0() hasInitialized payable public {
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))));
	}
	function vc3x0x0() hasInitialized payable public {
		assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
	}
	function vc4x0x0() hasInitialized payable public {
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((blockNumber > max_block && !funded && goal > balance && countBackers > 0))));
	}
	function vc5x0x0() hasInitialized payable public {
		assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
	}
	function vc6x0x0() hasInitialized payable public {
		assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
	}
	function vc7x0x0() hasInitialized payable public {
		assert(!((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && countBackers > 0)));
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

}