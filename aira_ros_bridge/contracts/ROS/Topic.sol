pragma solidity ^0.4.4;

/***
 * Entry point of typed and named messages.
 ***/
contract Topic {
    /*** Contract members ***/
    // The name of ROS topic, e.g '/hello'
    string public name;
    // The type of topic message, e.g. 'std_msgs/UInt8'
    string public messageType;
    /*** Public constructor ***/
    function Topic(string _name, string _type) {
        name = _name;
        messageType = _type;
    }
}
