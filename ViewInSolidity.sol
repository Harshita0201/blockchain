// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 <0.9.0;

contract ViewSample {
    uint256 num1 = 10;
    uint256 num2 = 20;

    function get() public view returns(uint256, uint256) {
        return (num1, num2);
    }

    function calculate() public view returns(uint256 product, uint256 sum){
        // uint256 n1 = 2;
        // uint256 n2 = 4;

        //  product = n1*n2;
        //  sum = n1+n2;

       //we can access the state variables using view but not change the value 


    //following will give error
    //    num1 +=34;
    //    num2 +=10;   

         product = num1*num2;
         sum = num1+num2;
    }
}