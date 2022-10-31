// SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract myCurrency is ERC20 {
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {
        _mint(msg.sender, 1000 * (10**18));
    }
//we multiply our no. of token into 10^18
//because we need to store any currency value 
//in its smallest form to avoid mathematical errors
    
}
