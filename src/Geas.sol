// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Vm} from "forge-std/Vm.sol";

library Geas {
    Vm private constant vm = Vm(address(uint160(uint(keccak256("hevm cheat code")))));

    function compile(string memory path) internal returns (bytes memory) {
        string[] memory args = new string[](3);
        args[0] = "geas";
        args[1] = "-no-nl";
        args[2] = path;

        return vm.ffi(args);
    }
}
