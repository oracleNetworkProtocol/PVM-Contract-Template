// SPDX-License-Identifier: MIT
// by 0xAA
pragma solidity ^0.8.4;

import "./PRC721.sol";

contract PlugModelPRC721 is PRC721{
    uint public MAX_APES = 10000; 

    constructor(string memory name_, string memory symbol_) PRC721(name_, symbol_){
    }

    function _baseURI() internal pure override returns (string memory) {
        return "";
    }
    
    function mint(address to, uint tokenId) external {
        require(tokenId >= 0 && tokenId < MAX_APES, "tokenId out of range");
        _mint(to, tokenId);
    }
}