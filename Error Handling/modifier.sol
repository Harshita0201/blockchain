// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ModifierSample{
    address public owner;
    bool public locked; //default false
    uint256 public x = 10;

   //define owner 
   constructor(){
    owner = msg.sender; //current caller is the owner 
   }

   modifier onlyOwner(){
    require(msg.sender==owner, "Not owner"); //we require that the caller of the function should remain the owner of the contract/current caller
    _;
   }
   
   modifier validateAddress(address _addr){
    require(_addr != address(0), "Not valid address"); //addr should not be null 
    _;
   }

   function changeOwner(address _newOwner) public onlyOwner validateAddress(_newOwner){
    owner = _newOwner;
   }

   modifier noReentrancy(){
      require(!locked, "No reentrancy!"); //if locked is false then no reentrancy
      locked = true; //if locked is already false - set it to true
      _;
      locked = false; 
   }

   function decrement(uint256 i) public noReentrancy{
       x -= 1;

       if(i>1){
          decrement(i-1);
       }
   }

}