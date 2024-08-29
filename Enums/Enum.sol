// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum {

    enum Status {pending, shipped, accepted, rejected, cancelled }

    Status public status;

    function getStatus() view  public returns(Status) {
          return status;
    }

    function setStatus(Status _status) public{
          status = _status;
    }
    
    function cancel() public {
        status = Status.cancelled;
    }

    function reset() public{
        delete status; 
    }
}