// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "./SimpleStorage.sol"; 

contract StorageFactory {
    
    // Here we're creating simpleStorageArray variable which is an array of SimpleStorage contracts.
    SimpleStorage[] public simpleStorageArray;
    
    // Here we're creating simpleStorageArray variable which is an array of SimpleStorageStorage contracts.
    function createSimpleStorageContract() public {
        // this is how we can create a new contract in the blockchain using new Contractname() method.
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // to call a function from a contract we need to use the contract name and the function name.
        // Address 
        // ABI 
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}