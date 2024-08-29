// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 <0.9.0;

contract StateVariables {
     string public str1;
     uint public num1;

     string public str2 ="Harshita";
     uint public num2 = 34; 

     bytes public _bytex = "mango";
     bytes public _bytey; 


     uint[] public arr;

     constructor(string memory _mystr, uint _num){
        str1 = _mystr;
        num1 = _num;
     }

}