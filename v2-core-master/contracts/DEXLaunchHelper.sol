// SPDX-License-Identifier: MIT

pragma solidity ^0.5.16;

// import './DEXV2FactoryFlat.sol';


contract Helper {

    /*function getBytecode1() external pure returns (bytes memory) {
        bytes memory bytecode = type(TestContract1).creationCode;
        return bytecode;
    }
    /*constructor(string memory _contractCode, string memory _symbol, uint8 _decimals, address _feeToSetter) public {
        
    }*/

    function getBytecode1(address _feeToSetter) external pure returns (bytes memory) {
        bytes memory bytecode = type(DEXV2Factory).creationCode;
        return abi.encodePacked(bytecode, abi.encode(_feeToSetter));

    }


    function getCalldata(address _owner) external pure returns (bytes memory) {
        return abi.encodeWithSignature("setOwner(address)", _owner);
    }
}



