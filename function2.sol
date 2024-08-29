// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 < 0.9.0;

contract FunctionSample{
    uint  age; 

    function getter() public view returns(uint){
         return age;
     }

    function setter(uint num) public{
        age = num;
    }
}