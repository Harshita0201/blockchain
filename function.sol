// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 <0.9.0;

contract SampleFunction {
    
    uint256 hey; //by default 0

    function getValue () public view returns(uint){
        return hey;
    }

    function updateValue(uint _hey) public {
        hey = _hey;
    }

    function get(uint256 _ahey, uint256 _bhey) public pure returns(uint256){
        uint256 newNum ;
        newNum =  _ahey+_bhey;
        return newNum;
    }
}