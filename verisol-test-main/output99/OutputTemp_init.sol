pragma solidity ^0.5.0;

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
assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((max_block < blockNumber && !funded && goal > balance)) && true));}
function vc1x0x0() hasInitialized payable public {
assert(!((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((max_block < blockNumber && !funded && goal > balance)) && true));}
function vc2x0x0() hasInitialized payable public {
assert(!(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((max_block < blockNumber && !funded && goal > balance)) && true));}
function vc3x0x0() hasInitialized payable public {
assert(!(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (max_block < blockNumber && !funded && goal > balance) && true));}
    address payable owner;
    uint max_block;
    uint goal;
    uint blockNumber;

    mapping(address => uint) backers;
    address[] backersArray = new address[](0);
    address[] auxArray;
    uint countBackers = 0;
    bool funded = false;
    uint balance = 0;

    // function a() hasInitialized public {
    //     assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
    //     assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0 )) ;
    // }

    function my_constructor(uint _max_block, uint _goal, uint _blockNumber) public payable {
		require(!has_initialized);
        owner = msg.sender; 
        max_block = _max_block;
        goal = _goal;
        balance = msg.value;
        blockNumber = _blockNumber;
		has_initialized = true;
    }

}