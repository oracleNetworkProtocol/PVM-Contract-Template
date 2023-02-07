// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../prc721/zh_CN/IPRC165.sol";

/**
 * @dev PRC11155接收合约，要接受PRC11155的安全转账，需要实现这个合约
 */
interface IPRC11155Receiver is IPRC165 {
    /**
     * @dev 接受PRC11155安全转账`safeTransferFrom` 
     * 需要返回 0xf23a6e61 或 `bytes4(keccak256("onPRC11155Received(address,address,uint256,uint256,bytes)"))`
     */
    function onPRC11155Received(
        address operator,
        address from,
        uint256 id,
        uint256 value,
        bytes calldata data
    ) external returns (bytes4);

    /**
     * @dev 接受PRC11155批量安全转账`safeBatchTransferFrom` 
     * 需要返回 0xbc197c81 或 `bytes4(keccak256("onPRC11155BatchReceived(address,address,uint256[],uint256[],bytes)"))`
     */
    function onPRC11155BatchReceived(
        address operator,
        address from,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external returns (bytes4);
}
