// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract HelloworldPermanent {
    string public message;

    constructor (string memory _message) {
      //  message = "NON CHANGABLE MESSAGE"; // değiştirilemeyecek mesaj
      message = _message;
    }
}