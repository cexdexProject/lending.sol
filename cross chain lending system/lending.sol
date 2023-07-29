// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LendingPool is Ownable {
    mapping(address => mapping(address => uint256)) private _balances;

    function deposit(address token, uint256 amount) public {
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        _balances[msg.sender][token] += amount;
    }

    function withdraw(address token, uint256 amount) public {
        require(_balances[msg.sender][token] >= amount, "Not enough balance");
        IERC20(token).transfer(msg.sender, amount);
        _balances[msg.sender][token] -= amount;
    }

    function balanceOf(address account, address token) public view returns (uint256) {
        return _balances[account][token];
    }
}