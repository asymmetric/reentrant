pragma solidity ^0.5.15;

import "ds-test/test.sol";

import "./Reentrant.sol";

contract ReentrantTest is DSTest {
    Reentrant reentrant;

    function setUp() public {
        reentrant = new Reentrant();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
