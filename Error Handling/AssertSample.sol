// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract AssertStatement{
    uint256 sum; 
    bool public result;

    function checkOverlfow(uint256 _num1, uint256 _num2) public{
        sum = _num1 + _num2;
        assert(sum<=255);
        result = true;
    }

    function output() view public returns(string memory){
        return result == true ? "No overflow" : "Overflow exists";
    }
}