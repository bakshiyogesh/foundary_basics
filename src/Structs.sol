// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyata", 1990, msg.sender);
    }
}
