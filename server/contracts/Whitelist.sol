// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract WhitelistDapp {
    uint8 public maxWhitelistAddress;

    mapping(address => bool) public isWhitelisted;

    uint8 public numWhitelistedAddress;

    constructor(uint8 _maxWhitelistAddress) {
        maxWhitelistAddress = _maxWhitelistAddress;
    }

    function addToWhitelist() public {
        require(!isWhitelisted[msg.sender], "Address already whitelisted");
        require(
            numWhitelistedAddress <= maxWhitelistAddress,
            "More address can't be added, Limit reached."
        );

        isWhitelisted[msg.sender] = true;
        numWhitelistedAddress += 1;
    }
}
