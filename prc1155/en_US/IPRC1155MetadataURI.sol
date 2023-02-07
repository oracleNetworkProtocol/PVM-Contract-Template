// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IPRC11155.sol";

interface IPRC11155MetadataURI is IPRC11155 {
    function uri(uint256 id) external view returns (string memory);
}