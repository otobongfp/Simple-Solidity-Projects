// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract playGround{
    
    uint public count = 0;
  
    function getCount() view public returns(uint){
        return count;
    }
    
    function incrementCount() public{
        count++;
    }
}
