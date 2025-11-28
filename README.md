Decentralized Lottery – Hardhat Project

This project demonstrates a fully functional decentralized lottery smart contract deployed on the Sepolia Ethereum test network using Hardhat.
The contract enables users to join the lottery by sending ETH, and allows the manager to pick a winner who receives the entire prize pool.

Features
Smart Contract

Written in Solidity (v0.8.20)

Allows users to enter the lottery by paying a minimum amount

Stores all players in an array

Allows the contract manager to pick a winner

Transfers the entire contract balance to the selected winner

Hardhat

Project setup for development and testing

Sepolia network configuration

Deployment script included

Contract successfully deployed to Sepolia testnet

GitHub

Full project pushed to public repository

Includes smart contract, Hardhat config, deployment script, and README

Smart Contract Address

Sepolia Contract Address:
0xE5b4D746e4B0752b5816e8FbbbFD1606dEE59323

View on Etherscan:
https://sepolia.etherscan.io/address/0xE5b4D746e4B0752b5816e8FbbbFD1606dEE59323

Project Structure
├── contracts
│   └── Lottery.sol
├── scripts
│   └── deploy.js
├── hardhat.config.js
├── package.json
├── .gitignore
├── README.md
└── test

Tech Stack

Solidity

Hardhat

JavaScript

Ethers.js

Sepolia Test Network

How to Run Locally
1. Clone the repository
git clone https://github.com/Siddheshwar-cloud/lottery-hardhat.git
cd lottery-hardhat

2. Install dependencies
npm install

3. Create environment variables

Create a .env file:

SEPOLIA_RPC_URL=your_alchemy_or_infura_url
PRIVATE_KEY=your_private_key

4. Compile the contract
npx hardhat compile

5. Deploy to Sepolia
npx hardhat run scripts/deploy.js --network sepolia

Deployment Script
const hre = require("hardhat");

async function main() {
  const Lottery = await hre.ethers.getContractFactory("Lottery");
  const lottery = await Lottery.deploy();
  await lottery.waitForDeployment();
  console.log("Lottery deployed to:", lottery.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

Purpose of the Project

This project was created as part of my Web3 learning journey.
It demonstrates practical knowledge of:

Smart contract development

Hardhat workflow

Network configuration

Deployment using private RPC

Etherscan verification workflow

This repository will continue to evolve with frontend integration and improvements.
