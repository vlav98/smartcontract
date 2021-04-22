// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Shipping {

    enum State {Pending, Shipped, Delivered}
    
    State public state;

    function setPending() {
        state = Pending;
    }

    function setShipped() {
        state = Shipped;
    }

    function setDelivered() {
        state = Delivered;
    }
}