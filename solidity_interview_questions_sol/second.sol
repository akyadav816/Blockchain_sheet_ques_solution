// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract TransferToken {
    mapping(address => uint) balances; //To store the balance corresponding to each user.

    constructor(uint initial_supply) {
        balances[msg.sender] = initial_supply;
    }

    function transfers(address to, uint value) public {
        require(to != address(0), "Invalid address");
        require(balances[msg.sender] >= value, "Insufficient balance");

        balances[msg.sender] -= value;

        balances[to] += value;
    }

    function balanceof(address owner) public view returns(uint){
      return  balances[owner];
    }
}
