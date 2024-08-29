

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Identiy{
    string name;
    uint age;
    

    constructor() public {
        name = "Rini";
        age = 23;
    }
    
    function getName() view public returns(string memory){
        return name;
    }

    function getAge() view public returns(uint){
        return age;
    }

    function setAge() public{
        age=age+1;
    }
}