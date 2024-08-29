// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ArrayRemoveFromEnd {
    uint256 [] public  arr;

    function removeFromEnd(uint index) public{
        //replace the last elememt with arr @ index element 

        arr[index] = arr[arr.length-1]; 

        //remove the last element 
        arr.pop();
    } 
    
    function test() public {
        arr = [1, 2, 3, 4];

        removeFromEnd(2); // arr -> [1, 2, 4]
        
        assert(arr.length == 3);
        assert(arr[0]==1);
        assert(arr[1]==2);
        assert(arr[3]==4);

        removeFromEnd(2);
        assert(arr.length == 2);
        assert(arr[0]==1);
        assert(arr[1]==2);
        
    }


}
