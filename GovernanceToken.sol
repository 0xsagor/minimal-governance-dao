// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.0/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.0/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {ERC20Votes} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.0/contracts/token/ERC20/extensions/ERC20Votes.sol";
import {Nonces} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.0/contracts/utils/Nonces.sol";

/**
 * @title GovernanceToken
 * @dev ERC20 token with voting capabilities for DAO governance.
 */
contract GovernanceToken is ERC20, ERC20Permit, ERC20Votes {
    constructor() ERC20("GovToken", "GTK") ERC20Permit("GovToken") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Overrides required by Solidity
    function _update(address from, address to, uint256 value) internal override(ERC20, ERC20Votes) {
        super._update(from, to, value);
    }

    function nonces(address owner) public view override(ERC20Permit, Nonces) returns (uint256) {
        return super.nonces(owner);
    }
}
