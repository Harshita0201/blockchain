// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 < 0.9;

contract IfElseSample {
    string public str;
    uint public num;

    function get(uint _num) public returns(string memory){
        num = _num;
        //    if(num==5){
        //     str = "Number is 5";
        //    }else if(num==4){
        //     str = "Number is 4";
        //    }else{
        //     str = "Number is neither 5 nor 4";
        //    }

        return num==5 ? str = "Number is 5" : str ="Number is not 5";
    }
}