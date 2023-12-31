// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Structs {

    // Imagine structs like JSON
    // we are declaring its keys and values
    // as an example lets take a look at `name` property
    // key = `name`
    // value = (any value in string type)
    struct User {
        string name;
        uint256 age;
        address wallet;
    }

    // We are declaring an array formed of User struct.
    User[] public users;


    // In this function we used 3 different usages of the structs.
    // You can declare any kind of the method but the second one is preferred
    function doOperations() external {
        User memory user1 = User("Goktug", 20, msg.sender);

        User memory user2 = User({name: "Ahmet", age: 30, wallet: msg.sender});

        User memory user3;
        user3.name = "Zeynep";
        user3.age = 22;
        user3.wallet = msg.sender;

        users.push(user1);
        users.push(user2);
        users.push(user3);
    }
}
