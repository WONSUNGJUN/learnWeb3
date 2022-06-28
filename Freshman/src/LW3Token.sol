//SDPX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
     1) REMIX IDE 를 사용할 경우
     */
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

/*
     2) VSCODE 를 사용할 경우
     npm init -y
     npm install @openzeppelin/contracts
     */

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LW3Token is ERC20 {
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {
        _mint(msg.sender, 10 * 10**18);
    }
}
