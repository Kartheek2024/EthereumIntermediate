//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    address public owner;
    uint256 public age = 20;
    uint256 public totalAmount = 100 ether;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    function deposit() public payable {
        age += 5;
        require(msg.value > 0, "Deposit amount must be greater than 0");
        totalAmount += msg.value;
    }

 

    function checkAmount(uint256 _expectedAmount) public  {
        age=age+5;
        assert(totalAmount == _expectedAmount);
    }

    function forceRevert() public {
        age += 5;
        revert("This function always reverts");
    }
}
