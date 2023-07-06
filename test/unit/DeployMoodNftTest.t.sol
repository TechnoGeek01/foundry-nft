// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft public deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public view {
        string memory svg = ""; // need to fill
        string memory expectedUri = ""; // need to fill

        string memory actualUri = deployer.svgToImageURI(svg);

        // assert(
        //     keccak256(abi.encodePacked(actualUri)) ==
        //         keccak256(abi.encodePacked(expectedUri))
        // );
    }
}
