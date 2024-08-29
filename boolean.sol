// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract BooleanSample{
     
      bool public flag = false;
      function set(uint256 _num) public returns(bool){
        return _num>95 ? flag = true : flag =false;
      }

}