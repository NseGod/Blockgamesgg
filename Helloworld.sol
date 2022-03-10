//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Program {
    string public zuriStudent;
    string public tag = "welcome";

    constructor(string memory studentName) {
        zuriStudent = studentName;
    }
    function createRecord(string memory newRecord) public {
        zuriStudent = newRecord;
    }
    function getRecord() public view returns (string memory) {
        return string(abi.encodePacked(tag, zuriStudent));
    }
}