pragma solidity =0.5.16;

import "ds-math/math.sol";

contract Reentrant is DSMath {
    mapping(address => uint) public balanceOf;
    address public victim;

    constructor(address victim_) public {
        victim = victim_;
    }

    function transfer(address to, uint value) external returns (bool) {
        UniswapV2Pair(victim).mint(to);

        balanceOf[msg.sender] = DSMath.sub(balanceOf[msg.sender], value);
        balanceOf[to] = DSMath.add(balanceOf[to], value);

        return true;
    }
}
