pragma solidity =0.5.16;

import "ds-test/test.sol";

import "./Reentrant.sol";

contract ReentrantTest is DSTest {
    Reentrant reentrant;

    function setUp() public {
        reentrant = new Reentrant(address(0x0));
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
