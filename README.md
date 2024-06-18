Overview:
The `BhumikaToken` contract extends ERC20 and Ownable contracts from OpenZeppelin. It initializes with a constructor setting `bh` to `msg.sender`. Features include `Balance_add` to mint tokens, `balance_Is` to check balances, `burn` to burn tokens (restricted to owner), and `transfer_token` for transfers (restricted to `bh`).

Description:
1. Token Details: The code defines a Solidity smart contract named `BhumikaToken` that represents a custom token. It uses OpenZeppelin's `ERC20` standard for tokens and `Ownable` for 
    ownership management.
2. Contract Initialization: Upon deployment, the contract initializes with an address stored in `bh`, set to the deployer's address (`msg.sender`).
3. Custom Access Modifier: There's a custom modifier named `bhumi` which restricts access to certain functions. Only the address stored in `bh` (initially the deployer's address) can     
    invoke functions with this modifier.
4. Minting Tokens: The function `Balance_add` allows the contract owner (`bh`) to mint (create) new tokens and add them to their own account.
5. Checking Balances: The function `balance_Is` allows anyone to check the balance of tokens held by a specific address.
6. Burning Tokens: The function `burn` allows the contract owner (`bh`) to burn (permanently remove from circulation) their own tokens.
7. Token Transfer: The function `transfer_token` allows the contract owner (`bh`) to transfer tokens to another address, using the ERC20 `transferFrom` function under the restriction of 
    the `bhumi` modifier.

In essence, this code defines a token contract where the owner (`bh`) has special privileges such as minting, burning, and transferring tokens, while others can check balances but have limited access to token manipulation functions.
