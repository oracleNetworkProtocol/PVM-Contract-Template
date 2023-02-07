// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// PRC721接收者接口：合约必须实现这个接口来通过安全转账接收PRC721
interface IPRC721Receiver {
    function onPRC721Received(
        address operator,
        address from,
        uint tokenId,
        bytes calldata data
    ) external returns (bytes4);
}