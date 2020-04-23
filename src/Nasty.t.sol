pragma solidity ^0.5.15;

import "ds-test/test.sol";

import "./Nasty.sol";

contract NastyTest is DSTest {
    Nasty nasty;

    function setUp() public {
        nasty = new Nasty();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
