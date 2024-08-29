// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MemoryVsStorage {
    
    string [] public students = ["Ravi", "Princy", "Mini"]; //storage 
     
    function mem() public view{
        string[] memory s1 = students; //copy of students is created and s1 has same values as students
        s1[0] = "Akash";  
    }
    
    function sto() public {
        string[] storage s2 = students; //s2 refers to original storage
        s2[0] = "Akash";
    }
}