# ZARDKAT Verification with Hardhat and Circom
This project aims to showcase the process of developing and validating ZK-SNARK proofs using the Hardhat framework, circom circuit language, and Ethereum smart contracts. The project encompasses creating a circom circuit that incorporates a logical gate, producing a proof for a specific input scenario like A=0 and B=1. The proof's legitimacy is then confirmed through a Solidity smart contract deployed on the Ethereum network.

The workflow involves utilizing the hardhat-circom template to draft the circuit, compiling it to generate intermediary circuit components, and ultimately generating a proof with designated input values. Additionally, the project entails deploying a Solidity-based verifier contract on the Polygon Mumbai Testnet, where the proof will be subjected to on-chain verification.

## npm install
1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Install the project dependencies by running:
   
```
npm install
npm install dotenv
```
## How to Use

To run the circuit and generate the proof, follow these steps:
  1. Clone this repository and navigate to the project directory.
  2. Ensure you have installed Node.js and npm.
  3. Install the required dependencies using ```npm install```.
  4. Write the circuit logic in the circuit.circom file.
  5. Compile the circuit using Hardhat-Circom with ```npx hardhat circom```.
  7.Deploy the verifier contract to the Polygon Mumbai Testnet using ```npx hardhat run scripts/deploy.js --network mumbai```.
  8. After deploy you will get a transaction address copy that address and paste it on polygonscan(mumbai) to verify the transacation.

## Note
1. Dont forget to add you wallet private key in the .env and import the env in hardhat.config.ts
2. also add some MATIC in your wallet before running the command over mumbai network
3. use the RPC url in the hardhat.config.ts file in network section to add mumbai polygon network in your wallet.
   
## Author
Vinay-Kumar-Gupta
## License
This Project is licensed under the MIT License.
     
