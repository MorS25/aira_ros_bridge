pragma solidity ^0.4.4;

import './Message.sol';

/***
 * Message handler interface should be implemented 
 * by any message handlers sended to Subscriber.
 ***/
contract MessageHandler {
    /*** Public methods ***/
    function incomingMessage(Message msg);
}
