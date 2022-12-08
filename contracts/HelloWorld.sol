// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0;

contract HelloWorld {
    event UpdatedMessage(string oldStr, string newStr);

    string public message;

    constructor (string memory initMessage) {
        message = initMessage;
    }

    function update(string memory newMessage) public {
        string memory oldMsg = message;
        message = newMessage;
        emit UpdatedMessage(oldMsg, newMessage);
    }
}