// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EnumSample{
     enum user {allowed, not_allowed, wait} // by default values assigned - 0, 1, 2

     user public u1 = user.allowed; // by default value 0
     uint public lottery = 1000;

     function assignLottery() public{
        if(u1 == user.allowed){
            lottery = 0;
        }
     }

     function changerUser() public {
           u1 = user.wait;
     }
}