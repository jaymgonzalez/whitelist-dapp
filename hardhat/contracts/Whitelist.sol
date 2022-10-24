// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelisr {
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(
            !whitelistedAddresses[msg.sender],
            "Sender has alredy been whitelisted"
        );

        require(
            numAddressesWhitelisted < maxWhitelistedAddresses,
            "Limit reached - More addresses cannot be added"
        );

        whitelistedAddresses[msg.sender] = true;

        numAddressesWhitelisted++;
    }
}
