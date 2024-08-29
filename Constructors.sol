// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 < 0.9.0;

//Base constructor X
contract X{
    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

// Base constructor Y
contract Y{
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

//2 following ways for to initialise parent contract's constructor 

//1. pass parameters in inheritance list
contract A is X("Input to X"), Y("Input to Y"){

}

//2. pass parameters inside the constructor of child contract 
contract B is X,Y{
    constructor(string memory _name, string memory _text) X(_name)  Y(_text) {}

}

contract D is X, Y{
    constructor() X("X is called") Y("Y is called") {   }
}

contract E is Y, X{
    constructor() Y("Y is called") X("X is called") {}
} 