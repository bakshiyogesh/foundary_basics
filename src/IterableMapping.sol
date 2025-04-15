// SPDX-License-Identifier: MIT SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;
        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getKeysLength() external view returns (uint) {
        return keys.length;
    }

    function get(uint _i) external view returns (uint) {
        return balances[keys[_i]];
    }
}
