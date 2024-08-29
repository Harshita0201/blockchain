// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 < 0.9.0;
contract Function {
    // 1. can return mulitple values
     function multipleReturn() public pure returns(uint, bool, uint){
        return (1, true, 3);
     }

     //2. return values by name
     function returnByName() public pure returns(uint x, bool b, uint y){
        return (2, true, 4);
     }

     //3. returns can be named, in this case return statement can be ommitted 
     function namedReturn() public pure returns(uint x, bool b, uint y){
        x=1;
        b=true;
        y=2;
     }
     
     //4. destructuring assignment when calling another
     function destructuringAssignment() public pure returns(uint, bool, uint, uint, uint){
           (uint i, bool b, uint j) = multipleReturn(); //i-->1, b-> true, y->3

           //value can be left out 
           (uint w, uint v) = (4, 5);

           return (i, b, j, w, v);
     }

     //CANNOT USE MAP AS FUNCTION INPUT OR OUTPUT 

     // Arrays can be taken as input and output 
     function arrayInput(uint[] memory _arr) public  {} 

     uint[] public arr;

     function arrayOutput() public view returns(uint[] memory){
        return arr;
     }

}

contract XYZ{
    function funcWithManyInputs(uint x, uint y, uint z, address a, bool b, string memory c) public pure returns(uint){
    }

    function callFun() external pure returns(uint){
        return funcWithManyInputs(2, 3, 4, address(0), true, "Rini"); //calling function passing values only 
    }
    
    function callFunKeyVal() external  pure returns (uint){
        return funcWithManyInputs({x:1, y:2, z:3, a:address(0), b:false, c:"hey"});
    }
}