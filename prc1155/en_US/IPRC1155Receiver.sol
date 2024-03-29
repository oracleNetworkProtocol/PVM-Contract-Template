// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../prc721/en_US/IPRC165.sol";


interface IPRC1155Receiver is IPRC165 {
    function onPRC1155Received(
        address operator,
        address from,
        uint256 id,
        uint256 value,
        bytes calldata data
    ) external returns (bytes4);
    function onPRC1155BatchReceived(
        address operator,
        address from,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external returns (bytes4);
}
