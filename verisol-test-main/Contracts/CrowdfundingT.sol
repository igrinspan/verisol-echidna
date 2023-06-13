// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Crowdfunding {
    address payable owner;
    uint max_block;
    uint goal;
    uint blockNumber;
    uint balance;

    mapping(address => uint) backers;
    address[] backersArray = new address[](0);
    address[] auxArray;
    uint countBackers = 0;
    bool funded = false;

    // function a() public {
    //     assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0));
    //     assert(!(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0 )) ;
    // }

    constructor(uint _max_block, uint _goal, uint _balance, uint _blockNumber) public payable{
        owner = payable(msg.sender); 
        max_block = _max_block;
        goal = _goal;
        balance = msg.value;
        blockNumber = _blockNumber;
    }

    function Donate() public payable {
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

    function GetFunds() public {
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

    function Claim() public {
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
    
    function remove(address _valueToFindAndRemove, address[] memory _array) public returns(address[] memory) {

        auxArray = new address[](0); 

        for (uint i = 0; i < _array.length; i++){
            if(_array[i] != _valueToFindAndRemove)
                auxArray.push(_array[i]);
        }

        return auxArray;
    }

    function t() public {
        blockNumber = blockNumber + 1;
    }
}