// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract DeployCounterScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Counter counter = new Counter();

        vm.stopBroadcast();
    }
}

contract Transact1CounterScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        address counterAddress = 0xc85A1b68587C62e6894Ade05e68CB515f99665d4;

        Counter counter = Counter(counterAddress);
        uint256 value = counter.number();
        console.log("value:", value);
        counter.increment();
        uint256 value2 = counter.number();
        console.log("value2:", value2);

        vm.stopBroadcast();
    }
}

contract TransactnCounterScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        // address counterAddress = 0xc85A1b68587C62e6894Ade05e68CB515f99665d4;
        address counterAddress = 0xd99A2e4221EC0623E5EbD8d8ca025069799AF3EC;
        Counter counter = Counter(counterAddress);

        uint256 n = 21;
        uint256 j;
        uint256 value;
        while (j < n) {
            if (j % 2 == 0) {
                counter.increment();
            } else {
                counter.setNumber(j * 98 - (j + 3 * 12) + 2);
            }
            value = counter.number();
            console.log("value", j, ":", value);
            j++;
        }
        vm.stopBroadcast();
    }
}
