// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/Fundme.sol";
import {HelperConfig} from "../script/HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        // Before startBroadcast -> Not a rea tx
        HelperConfig helperConfig = new HelperConfig();
        address ethUsdPriceFeed = helperConfig.activeNetworkConfig();
        // After broadcast real tx
        vm.startBroadcast();

        FundMe fundMe = new FundMe(ethUsdPriceFeed);
        //0x694AA1769357215DE4FAC081bf1f309aDC325306
        vm.stopBroadcast();
        return fundMe;
    }
}
