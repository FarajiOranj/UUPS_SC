// ropsten: 0xCA986bDe7e06FD28704ad86aa87C7756aB0E0c1c

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Open Zeppelin libraries for controlling upgradability and access.
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract TK721 is Initializable, UUPSUpgradeable, ERC721Upgradeable ,OwnableUpgradeable {
   

   function initialize() public initializer {
        __ERC721_init("meow","MW");
       __Ownable_init();
   }

   ///@dev required by the OZ UUPS module
   function _authorizeUpgrade(address) internal override onlyOwner {}

}