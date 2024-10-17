// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.26;

contract DeleteArray {
    uint8[] public array = [1,2,3,4,5,6,7];

    function removeItems(uint index) public {
        array[index] = array[array.length - 1];
        array.pop();
    }
}