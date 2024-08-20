// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract BoxV1 is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    uint256 internal number;

    // We can't use a constructor in a proxy
    // proxy -> implementation
    // If implementation has a constructor, implementation will store those values and not the proxy
    // We want the proxy to be the owner of the constructor arguments and since proxy can not have a consturctor, we use Initializer
    
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer(){
        __Ownable_init(msg.sender); // sets the owner to msg.sender
        __UUPSUpgradeable_init();
    }

    function getNumber() external view returns (uint256) {
        return number;
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
