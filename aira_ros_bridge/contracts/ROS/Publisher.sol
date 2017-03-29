pragma solidity ^0.4.4;

import './Topic.sol';
import './Message.sol';

/***
 * The publisher contract.
 * Implements message publish action,
 * gives message and emit the event.
 ***/
contract Publisher is Topic {
    /*** Service events & functions ***/
    event PubMessage(address indexed msg);
    /*** Public constructor ***/
    function Publisher(string _name, string _type) Topic(_name, _type)
    {}
    /*** Public methods ***/
    // Publish new message
    function publish(Message _msg) {
        PubMessage(_msg);
    }
}
