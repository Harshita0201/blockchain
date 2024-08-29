// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 < 0.9.0;

contract ConstantSample{
   // address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //execution cost : 70063

    //vs constants (saves gas)

    address public constant myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //execution cost: 45697

    function getConstant() public pure returns(address){ //if add was not public, function could have been "view"

        //execution cost : 88681 (when address is not constant)
        return myAdd;// execution cost : 58309 (when address is constant)

    }
}