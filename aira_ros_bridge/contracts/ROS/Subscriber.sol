pragma solidity ^0.4.4;

import './Topic.sol';
import './MessageHandler.sol';

/***
 * The subscriber contract.
 * Implements message subscribing action,
 * gives message transactions and runs the Runnable callback.
 ***/
contract Subscriber is Topic {
    /*** Private members ***/
    MessageHandler callback;
    // The connection endpoint, e.g. AIRA ROS Bridge account address
    address endpoint;
    /*** Service events & functions ***/
    function SubMessage(Message _msg) {
        if (msg.sender != endpoint) throw;
        callback.incomingMessage(_msg);
    }
    /*** Public constructor ***/
    function Subscriber(string _name,
                        string _type,
                        MessageHandler _callback,
                        address _endpoint) Topic(_name, _type) {
        callback = _callback;
        endpoint = _endpoint;
    }
}
