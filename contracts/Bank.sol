pragma solidity 0.6.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Bank {

    function deposit(address token, uint256 amount) public {
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        
    }

    function withdraw(address token, uint256 amount) public {}
}