// SPDX-License-Identifier: AGPLv3
pragma solidity ^0.8.0;

import {SuperTokenBase} from "./base/SuperTokenBase.sol";

contract PureSuperToken is SuperTokenBase {
    constructor(
        address factory,
        string memory name,
        string memory symbol,
        address receiver,
        uint256 initialSupply
    ) SuperTokenBase(factory, name, symbol) {
        _mint(receiver, initialSupply, "");
    }
}
