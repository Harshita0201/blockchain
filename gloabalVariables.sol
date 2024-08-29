// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 <0.9.0;

contract GlobalVariables {
    //by deafult all the following gloabal variables are empty or 0 or 0x
    address public owner;
    address public myBlockHash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public firtFour;


    constructor(){
        owner = msg.sender; //sender of msg or current caller 
        myBlockHash = block.coinbase; //current block miner's address
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number; 
        timestamp = block.timestamp;
        gasprice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        firtFour = msg.sig;

    }
}

