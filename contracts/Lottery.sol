// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Lottery {
    address public manager;
    address[] public players;

    constructor() {
        manager = msg.sender;
    }

    function enter() external payable {
        require(msg.value >= 0.01 ether, "Minimum 0.01 ETH required");
        players.push(msg.sender);
    }

    function getPlayers() external view returns (address[] memory) {
        return players;
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function pickWinner() external {
        require(msg.sender == manager, "Only manager can pick winner");
        require(players.length > 0, "No players");

        uint256 random = uint256(
            keccak256(
                abi.encodePacked(block.timestamp, block.prevrandao, players.length)
            )
        );

        uint256 index = random % players.length;
        address payable winner = payable(players[index]);

        uint256 prize = address(this).balance;

       players = new address[](0);

        (bool sent, ) = winner.call{value: prize}("");
        require(sent, "Transfer failed");
    }
}
