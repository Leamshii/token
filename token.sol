// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // Public variables to store token details
    string public tokenName = "IshMETA";
    string public tokenAbbrv = "IMTA";
    uint public totalSupply = 0;

    // Mapping to store balances
    mapping(address => uint) public balances;

    // Mint function to increase the total supply and balance of the specified address
    function mint(address _to, uint _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to decrease the total supply and balance of the specified address
    function burn(address _from, uint _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");

        balances[_from] -= _value;
        totalSupply -= _value;
    }
}
