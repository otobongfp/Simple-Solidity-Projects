//SPDX-License-Identifier: MIT 

pragma solidity >=0.7.0 < 0.9.0;

//A Simple Contract to help you Understand how solidity implements Tokens 

contract Coin{
    address minter;
    
    mapping (address => uint) public balances;
    
    //react to specific contract changes
    event Sent(address from, address to, uint amount);
    
    constructor(){
        minter = msg.sender;
    }
    
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }
    
    error insufficientBalance(uint requested, uint available);
    
    function send(address receiver, uint amount) public{
        if(amount > balances[msg.sender]){
            revert insufficientBalance({
                requested : amount,
                available : balances[msg.sender]
            });
        }
        
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
    
}
