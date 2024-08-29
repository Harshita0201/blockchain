// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ByteArray{
    //in bytes array everything will be stroes in hexadecimal form

    //1 byte - 8 bits (2 hexadecimal bytes)
    //1 hexadecimal byte - 4 bits

    bytes2 public arr1; // 2*2 = 4 hexadecimal bits 
    bytes3 public arr2; //3*2 = 6 hexadecimal bits 
    
    function setter() public {
        arr1 = "a"; //padding of 00's at 1 index
        arr2 = "abc";
        //arr2[0] = "d"; //byte array are immutable therefore values at any index cannot be changed

    }
}