//SDPX-License-Identifier: MIT
pragma solidity ^0.8.7;

// VSCODE 시 빨간밑줄이 떠도 무시해도 배포 잘됨
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract GameItem is ERC721 {
    constructor() ERC721("GameItem", "ITM") {
        _mint(msg.sender, 1);
    }
}
