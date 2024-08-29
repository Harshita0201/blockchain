// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract PureSample {
    uint256 age =10;

    function update() public pure returns (uint256){
        // return age; -> this will throw error as it is reading from state variable
       // age +=10 // will give error
        uint256 rollNum =10 ;
        return rollNum; 
    }
}