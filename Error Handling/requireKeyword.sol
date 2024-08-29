// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract RequireKeywordSample{

    // function checkInput(uint256 _input) pure  public returns(string memory){

    //     require( _input >= 0, "invalid input for uint8");
    //     require( _input <= 255, "invalid input for uint8");
    //     return "Valid uint8 number"; 

    // }

    function checkOdd(uint256 _number) pure public returns(bool){
        require(_number%2 !=0, "Number is not odd");

        return true; ///number is odd 
    }
}