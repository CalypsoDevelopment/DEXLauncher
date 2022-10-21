// SPDX-License-Identifier: MIT
pragma solidity =0.5.16;

import './DEXV2ERC20.sol';
import './DEXV2Factory.sol';

contract DEXFactoryLauncher {
    function createDEXLPToken(string memory _name, string memory _symbol) public {
        DEXV2ERC20 devv2erc20 = new DEXV2ERC20(_name, _symbol);
    }

    function createDEXFactory(address _feeToSetter) public {
        DEXV2Factory dexv2factory = new DEXV2Factory(_feeToSetter);
    }
}