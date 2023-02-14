// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../prc721/zh_CN/IPRC165.sol";

/**
 * @dev PRC1155接收合约，要接受PRC1155的安全转账，需要实现这个合约
 */
interface IPRC1155Receiver is IPRC165 {
    /**
     * @dev 接受PRC1155安全转账`safeTransferFrom` 
     * 需要返回 0xf23a6e61 或 `bytes4(keccak256("onPRC1155Received(address,address,uint256,uint256,bytes)"))`
     */
    function onPRC1155Received(
        address operator,
        address from,
        uint256 id,
        uint256 value,
        bytes calldata data
    ) external returns (bytes4);

    /**
     * @dev 接受PRC1155批量安全转账`safeBatchTransferFrom` 
     * 需要返回 0xbc197c81 或 `bytes4(keccak256("onPRC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))`
     */
    function onPRC1155BatchReceived(
        address operator,
        address from,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external returns (bytes4);
}
