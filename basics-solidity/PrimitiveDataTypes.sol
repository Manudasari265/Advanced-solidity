// SPDX-License-Identifier: MIT
// primitive data types and varibles examples

pragma solidity ^0.8.19;

contract PrimitiveDataTypes {
    // boolean data type
    bool public greet = true;

    /*
      uint stands for unsigned integer, meaning non negative integers
      different sizes are available:-
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public u8 = 3;
    uint16 public u16 = 56;
    uint256 public u256 = 475;

    /*
      Negative numbers are allowed for int types.
      Like uint, different ranges are available from int8 to int256
      
      int256 ranges from -2 ** 255 to 2 ** 255 - 1
      int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -3;
    int16 public i16 = -56;
    int256 public i256 = -475;

    // minimum and maximum of int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}

 /*
      There are 3 types of variables in Solidity
      * local - declared inside a function, not stored on the blockchain
      * state - declared outside a function, stored on the blockchain
      * global (provides information about the blockchain)
    */
contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public view {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;

        // Here are some global variables
        uint256 timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}