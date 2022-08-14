// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Whitelist {
    // max num of whitelisted address allowed
    uint8 public maxWhitelistedAddress;

    mapping(address => bool) public whitelistedAddress;

    uint8 public numWhitelistedAddress;

    constructor(uint8 _maxWhitelistedAddress) {
        maxWhitelistedAddress = _maxWhitelistedAddress;
    }

    function addAddressToWhitelist() public {
        require(
            !whitelistedAddress[msg.sender],
            "Sender has already been whitelisted"
        );
        require(
            numWhitelistedAddress < maxWhitelistedAddress,
            "More address can't be added, Limit reached"
        );

        whitelistedAddress[msg.sender] = true;

        numWhitelistedAddress += 1;
    }
}
