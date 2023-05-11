// SPDX-License-Identifier: AGPLv3
pragma solidity ^0.8.0;

import {SuperTokenBase} from "./base/SuperTokenBase.sol";

contract PureSuperToken is SuperTokenBase {

    /// @param factory super token factory for initialization
	/// @param name super token name
	/// @param symbol super token symbol
	/// @param receiver Receiver of pre-mint
	/// @param initialSupply Initial token supply to pre-mint
    constructor(
        address factory,
        string memory name,
        string memory symbol,
        address receiver,
        uint256 initialSupply
    ) SuperTokenBase(factory, name, symbol){
        _mint(receiver, initialSupply, "");
    }

}
