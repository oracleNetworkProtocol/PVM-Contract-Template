// SPDX-License-Identifier: MIT
// by 0xAA
pragma solidity ^0.8.4;

import "./PRC1155.sol";

contract PLUGModelPRC1155 is PRC1155{
    uint256 constant MAX_ID = 10000; 
    // 构造函数
    constructor() PRC1155("PLUGModelPRC1155", "PLUGModelPRC1155"){
    }

    //的baseURI为ipfs://QmeSjSinHpPnmXmspMjwiXyN6zS4E9zccariGR3jxcaWtq/ 
    function _baseURI() internal pure override returns (string memory) {
        return "";
    }
    
    // 铸造函数
    function mint(address to, uint256 id, uint256 amount) external {
        // id 不能超过10,000
        require(id < MAX_ID, "id overflow");
        _mint(to, id, amount, "");
    }

    // 批量铸造函数
    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts) external {
        // id 不能超过10,000
        for (uint256 i = 0; i < ids.length; i++) {
            require(ids[i] < MAX_ID, "id overflow");
        }
        _mintBatch(to, ids, amounts, "");
    }

}