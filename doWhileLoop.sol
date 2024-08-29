// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 <0.9.0;

contract  doWhileSample {
    uint8 k = 0;
    uint256 [] arr; 

    function loop() public returns (uint256[] memory){
        do {
            k++;
            arr.push(k);
        } while (k<5);
        return arr;
    }
}