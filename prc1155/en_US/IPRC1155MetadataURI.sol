// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IPRC1155.sol";

interface IPRC1155MetadataURI is IPRC1155 {
    function uri(uint256 id) external view returns (string memory);
}