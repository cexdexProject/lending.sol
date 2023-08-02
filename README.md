# lending.sol
Lending Pool Smart Contract
Description
This Solidity smart contract, "LendingPool," serves as a basic implementation of a lending pool, allowing users to deposit and withdraw ERC20 tokens. It enables users to lend their tokens to the pool and withdraw them when needed. The contract is owned by the deployer and ensures secure token transfers through the OpenZeppelin library.

Functionality
deposit(address token, uint256 amount): Allows users to deposit ERC20 tokens into the lending pool. Tokens are transferred from the user's address to the contract, and the user's balance is updated accordingly.

withdraw(address token, uint256 amount): Enables users to withdraw deposited ERC20 tokens from the lending pool. The requested amount is transferred back to the user's address if they have sufficient balance in the pool.

balanceOf(address account, address token): Returns the balance of ERC20 tokens held by a specific account in the lending pool.

Prerequisites
Solidity version 0.8.0 or higher
OpenZeppelin Contracts library
Installation
Install the required Solidity compiler.
Install the OpenZeppelin Contracts library using the command: npm install @openzeppelin/contracts.
Compile the contract using the Solidity compiler.
Deploy the smart contract on the Ethereum network.


Usage
Deploy the contract and become the owner of the lending pool.
Users can interact with the contract using the deposit and withdraw functions to lend and withdraw ERC20 tokens.
Check the balance of a user's ERC20 tokens in the lending pool using the balanceOf function
