pragma solidity =0.5.16;

import '../DEXV2ERC20.sol';

contract ERC20 is DEXV2ERC20 {
    constructor(uint _totalSupply) public {
        _mint(msg.sender, _totalSupply);
    }
}
