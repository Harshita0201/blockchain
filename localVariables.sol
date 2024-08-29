// SPDX-License-Identifier: MIT
pragma solidity >=0.5.9 < 0.9.0;

contract LocalVariable {
    uint public stateVarEx;

    function local () public  returns(address, uint, uint) {
        uint  localVarEx= 3400;
        stateVarEx = localVarEx;
        stateVarEx+=40;
        address myAddress = address(1);
        return (myAddress, stateVarEx, localVarEx);
    }
}