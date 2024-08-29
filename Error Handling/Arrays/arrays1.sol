// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array {
    uint[] public arr;

    uint[] public arr2 = [1, 2, 3];

    uint[10] public fixeSizeArray; //by default 10 places filled with 0

    //operations that can be performed on an array -> 

    function getArrayElemet(uint index) public view returns(uint){
        return arr[index];
    }

    function getArray() public view returns(uint[] memory){
        return arr;
    }

    //push element to the end of arr - increase size by 1

    function pushElement(uint element) public {
        arr.push(element);
    }

    //pop elemt from the end of array - decrease size by 1
    function popElement() public {
        arr.pop();
    }

    //remove element from array @index - will replace element by 0(default value) - np change in size
    function removeElement(uint index) public{
        delete arr[index];
    }
    // get length of arr 
    function getLengthOfArray() public view returns(uint){
       return arr.length;
    }

    // function examples() pure external{
    //     uint[] memory a = new uint[](5);
    // }

}