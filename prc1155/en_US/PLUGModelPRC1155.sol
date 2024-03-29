// SPDX-License-Identifier: MIT
// by 0xAA
pragma solidity ^0.8.4;

import "./PRC1155.sol";

contract PLUGModelPRC1155 is PRC1155{
    uint256 constant MAX_ID = 10000; 
    constructor() PRC1155("PLUGModelPRC1155", "PLUGModelPRC1155"){
    }

    function _baseURI() internal pure override returns (string memory) {
        return "";
    }
    
    function mint(address to, uint256 id, uint256 amount) external {
        require(id < MAX_ID, "id overflow");
        _mint(to, id, amount, "");
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts) external {
        for (uint256 i = 0; i < ids.length; i++) {
            require(ids[i] < MAX_ID, "id overflow");
        }
        _mintBatch(to, ids, amounts, "");
    }

}