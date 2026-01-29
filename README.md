🎰 Decentralized Lottery — Smart Contract on Sepolia
Built with Hardhat + Solidity (0.8.20) | Fully On-Chain | Verifiable | Transparent

This repository contains a fully functional decentralized Lottery smart contract, deployed on the Sepolia Testnet.




Features 
✔️ Users can enter the lottery by sending ETH  
✔️ Owner (manager) can pick a winner
✔️ Transparent prize pool — visible on-chain 
✔️ Fully built & deployed using Hardhat + ethers.js
✔️ Clean & minimal contract optimized for testnets
✔️ Deployment logs + Contract address included



• Contract Information
Network - sepolia
Contract Address - 0xE5b4D746e4B0752b5816e8FbbbFD1606dEE59323
Compiler Version - 0.8.20
Framework - Hardhat



📦 Tech Stack
Solidity 0.8.x
Hardhat (v2)
Ethers.js
dotenv
Node.js




🛠️ Deployment (Hardhat Command)
npx hardhat run scripts/deploy.js --network sepolia




📜 Lottery.sol (Core Logic)
Users enter via enter()
Manager calls pickWinner()
Prize instantly transferred on-chain
Players array reset after each round




• What I Learned
1)Configuring Hardhat networks
2)Deploying live contracts to Sepolia
3)Managing private keys safely
4)Structuring smart contract projects
5)Debugging compiler and migration issues
6)Signing real transactions using ethers.js




👨‍💻 Author
Sidheshwar Yengudle
Solidity | Smart Contract Developer



⭐ If you like this project — consider giving a star!
