// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.9.0;

contract Shipping {

    enum State {
        Pending, 
        Shipped, 
        Delivered
    }

    State public state;
    address payable internal deliveryAccount = 0xc71fDbDE4938D7605528FD998a7a5F5420eAbB6A;
    
    event Create(uint id, State); 
    event Shipped(uint id, State); 
    event Delivered(uint id, State); 

    struct Article {
        uint _id;
        State state;
    }

    Article[] public articles;

    function create(uint _id) public {        
        articles.push(Article(_id, State.Pending));
        emit Create(_id, State.Pending);
    }

    function shipped(uint _id) public {
        emit Create(_id, State.Shipped);
    }

    function received(uint _id) public {
        emit Delivered(_id, State.Delivered);
    }

    function giveTip(address deliveryAccount) public {

    }
}