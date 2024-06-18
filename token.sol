// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract BhumikaToken is ERC20("Bhumika's Token", "BT") ,Ownable(msg.sender) {
    
    address bh;

    //constructor for initializing the address
    constructor (){
        bh=msg.sender;
    }

    modifier bhumi(address b) {
        require(b == msg.sender, "Only sender can access this feature");
        _;
    }

    //function to mint some token to others accounts
    function Balance_add(uint amount) public bhumi(bh) returns (string memory){
        _mint(bh, amount);
        return "Amount is added to the account";
    }

    //function to know the balance of the accounts and it is not restricted by modifier , so that anyone can see the token info
    function balance_Is(address h) public view returns (uint256) {
        return balanceOf(h);
    }

    //function to burn the tokens and it will be abided by the modifier, so that only the owner can burn his/her tokens
    function burn(uint amount) public onlyOwner {
        _burn(bh, amount);
    }

    //final function to transfer some tokens to other accounts
    function transfer_token(address _address, uint256 amount) public bhumi(bh) {
        transferFrom(bh, _address, amount);
    }

}