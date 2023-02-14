// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IPRC1155.sol";

/**
 * @dev PRC1155的可选接口，加入了uri()函数查询元数据
 */
interface IPRC1155MetadataURI is IPRC1155 {
    /**
     * @dev 返回第`id`种类代币的URI
     */
    function uri(uint256 id) external view returns (string memory);
}