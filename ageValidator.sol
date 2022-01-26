//SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

contract ageValidator{

    function checkAge(uint age) public pure returns(string memory){

        if(age<20 && age>12){
            string memory ans = "Based on the age this is a teenager";
            return ans;
        }if(age < 13){
            string memory ans = "Based on the age this is a child";
            return ans;
        }else{
            string memory ans = "This is an Adult";
            return ans;
        }

    }
}
