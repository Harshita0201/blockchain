// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 <0.9.0;

contract WhileLoopSample{
    uint256 [] arr;
    uint8 k;
    
    function loop() public returns(uint256 [] memory){
        while(k<5){
            k++; 
            arr.push(k);
        }
        return arr;
    }
}