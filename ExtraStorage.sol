// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {

    // to override a function from parent contract we need to use the virtual keyword.
    function store(uint256 _favoriteNumber) public virtual override {
        favoriteNumber = _favoriteNumber + 5;
    }
}