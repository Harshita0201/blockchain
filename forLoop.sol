// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 < 0.9.0;

contract forLoopExample {
    uint256  [] arr;  
    
    function loop() public returns(uint256[] memory){
        for(uint8 k=0; k<5; k++){
            arr.push(k);
        }
        return arr;
    }
}