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
require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && !((max_block < blockNumber && !funded && goal > balance)) && true);
assert(false);
}
function vc1x0x0() hasInitialized payable public {
require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && !((max_block < blockNumber && !funded && goal > balance)) && true);
assert(false);
}
function vc2x0x0() hasInitialized payable public {
require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && !((max_block < blockNumber && !funded && goal > balance)) && true);
assert(false);
}
function vc3x0x0() hasInitialized payable public {
require(!((max_block > blockNumber)) && !((max_block < blockNumber && goal <= balance)) && (max_block < blockNumber && !funded && goal > balance) && true);
assert(false);
}
function vc4x0x0() hasInitialized payable public {
require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !((max_block < blockNumber && !funded && goal > balance)) && true);
assert(false);
}
function vc5x0x0() hasInitialized payable public {
require((max_block > blockNumber) && !((max_block < blockNumber && goal <= balance)) && (max_block < blockNumber && !funded && goal > balance) && true);
assert(false);
}
function vc6x0x0() hasInitialized payable public {
require(!((max_block > blockNumber)) && (max_block < blockNumber && goal <= balance) && (max_block < blockNumber && !funded && goal > balance) && true);
assert(false);
}
function vc7x0x0() hasInitialized payable public {
require((max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && (max_block < blockNumber && !funded && goal > balance) && true);
assert(false);
}
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