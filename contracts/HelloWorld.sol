// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Helloworld {

    string public message;

    constructor(string memory _message) {
        message = _message;

    }

    function hello() public view returns(string memory) { // pure idi view yapıldı.
        return message;
    }

    function setMessage(string memory _message) public payable {
        require(msg.value > 1 ether); // para transferi için kullanılır >= ise 1 ve birden büyük anlamı taşır.
        message = _message;
    }
}