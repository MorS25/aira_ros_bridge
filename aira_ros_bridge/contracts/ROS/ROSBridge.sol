pragma solidity ^0.4.4;

import './Subscriber.sol';
import './Publisher.sol';

/***
 * The main ROS bridge contract.
 * Should be super for any ROS compatible contracts.
 ***/
contract ROSBridge {
    /*** Contract members ***/
    // List of all contract publishers
    Publisher[]  public publishers;
    // List of all contract subscribers
    Subscriber[] public subscribers;
    // Endpoint address, e.g. AIRA ROS Bridge account address
    address endpoint;
    /*** ROS Compatible constructor ***/
    function ROSBridge(address _endpoint) { endpoint = _endpoint; }
    /*** Public methods ***/
    // Create a new Subscriber instance
    function mkSubscriber(string _name,
                          string _type,
                          MessageHandler _callback) returns (Subscriber) {
        var subscriber = new Subscriber(_name, _type, _callback, endpoint);
        subscribers[subscribers.length++] = subscriber;
        return subscriber;
    }
    // Create a new Publisher instance
    function mkPublisher(string _name, string _type) returns (Publisher) {
        var publisher = new Publisher(_name, _type);
        publishers[publishers.length++] = publisher;
        return publisher;
    }
}
