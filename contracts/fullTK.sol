// ropsten: 0x70e88C5749eeAD350BCd54e8E0E03CE55F3D2597
// ropsten: proxy => 0x41c9492A6Ba783d33e89b7726cE08598ec12d426

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


import "./tk721.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";

contract fullTK is TK721, ERC1155Upgradeable{
        using CountersUpgradeable for CountersUpgradeable.Counter;
        CountersUpgradeable.Counter private _tokenId;

        function _setApprovalForAll(address owner, address operator, bool approved) internal override(ERC721Upgradeable,ERC1155Upgradeable){
        super._setApprovalForAll(owner,operator,approved);
        }

        function isApprovedForAll(address owner,address operator) public view override(ERC721Upgradeable,ERC1155Upgradeable) returns (bool){
            super.isApprovedForAll(owner,operator);
        }
        function setApprovalForAll(address operator, bool approved) public override(ERC721Upgradeable,ERC1155Upgradeable){
                    super.setApprovalForAll(operator,approved);
        }

        function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721Upgradeable,ERC1155Upgradeable) returns (bool) {
        super.supportsInterface(interfaceId);
        }

        function mint() external returns(uint256){
            _tokenId.increment();
            uint256 newTokenId = _tokenId.current();

            _safeMint(msg.sender, newTokenId);

            return newTokenId;
        }

        function bactchMint(uint256 _amount) external returns(string memory){
            return "batchMint under maintences...";
        }
}