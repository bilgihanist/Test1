// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Whatsapp {

    string public message;
    address public owner;

    constructor(string memory _message) {
        message = _message;
        owner = msg.sender; // constructorda sahibini msg.sender eşitleriz.

    }

    function hello() public view returns(string memory) { // pure idi view yapıldı.
        return message;
    }

    function setMessage(string memory _message) public payable {
        require(msg.sender == owner );   // mesaj göndermek için bir sahibi olmak zorundadır.
        message = _message;
    }
}