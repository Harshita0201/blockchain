// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DynamicByteArray{
    bytes public arr = "abc";

    function setter() public {
        arr = "abcd";
    }

    function getter(uint index) view  public returns (bytes1){
        return arr[index];
    }

    function getLength() view public returns (uint){
        return arr.length; 
    }
}