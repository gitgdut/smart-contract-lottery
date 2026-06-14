// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
//uint
//integration
//forked
//staging<=run tests on a mainnet or testnet

//fuzz
//stateful fuzzing
//stateless fuzzing
//formal verification
import {Test} from "forge-std/Test.sol";
import {Raffle} from "../../src/Raffle.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";
import {DeployRaffle} from "../../script/DeployRaffle.s.sol";
import {Vm} from "forge-std/Vm.sol";
import {
    VRFCoordinatorV2_5Mock
} from "@chainlink/contracts/src/v0.8/vrf/mocks/VRFCoordinatorV2_5Mock.sol";
import {CodeConstants} from "script/HelperConfig.s.sol";
