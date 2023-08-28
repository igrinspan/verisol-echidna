//SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Crowdfunding {
    bool funded = false;
    
    address payable owner = msg.sender; // el address que despliega el contrato: 0x3000
    uint max_block = 2;
    uint goal = 4;
    uint block_number = 0;
    mapping(address => uint) backers;

    constructor(/*address payable _owner, uint _max_block, uint _goal*/) public {

    }

    function donate(uint256 _inc) public payable {
        require(max_block > block_number); 
        require(backers[msg.sender] == 0);
        backers[msg.sender] = msg.value;
        tau(_inc);
    }

    function getFunds() public {
        require(max_block < block_number);
        require(msg.sender == owner);
        require(goal <= address(this).balance);
        funded = true;
        owner.transfer(address(this).balance);
    }

    function claim() public {
        require(max_block < block_number);
        require(backers[msg.sender] > 0 && !funded);
        require(goal > address(this).balance);
        uint val = backers[msg.sender];
        backers[msg.sender] = 0;
        msg.sender.transfer(val);
    }

    function tau(uint256 _inc) public {
        _inc = (_inc % 2) + 1;  // el incremento puede ser de 1 ó 2.
        block_number = block_number + _inc;
    }
}