// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPRC721Receiver {
    function onPRC721Received(
        address operator,
        address from,
        uint tokenId,
        bytes calldata data
    ) external returns (bytes4);
}