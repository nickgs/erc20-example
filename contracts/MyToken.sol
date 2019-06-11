pragma solidity ^0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";

contract MyToken is ERC20, ERC20Mintable, ERC20Detailed, ERC20Burnable {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals
    )
        ERC20Burnable()
        ERC20Mintable()
        ERC20Detailed(name, symbol, decimals)
        ERC20()
        public
    {
         _mint(msg.sender, 10000 * (10 ** uint256(decimals)));
    }
}