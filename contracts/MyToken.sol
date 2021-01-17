pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";

contract MyToken is ERC20, ERC20Burnable {
    constructor(
        string memory name,
        string memory symbol
    )
        ERC20Burnable()
        ERC20(name, symbol)
        public
    {
         _mint(msg.sender, 10000 * 10**18);
    }
}