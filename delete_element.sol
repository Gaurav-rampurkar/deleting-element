// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// deleteting an element from the array in order or out of order

contract MyContract {
    string [] public data;
    
    constructor() public {
        data.push("John");
        data.push("Bruce");
        data.push("Tom");
        data.push("Bart");
        data.push("Cherry");
    }
    function removeNoOrder(uint index ) external {     //in this func element to remove is replaced with the last element
        data [index] = data[data.length-1];             // then last element is popped out 
        data.pop();                                      // but the con is array do not remain in order
    } 
    
    //so efficient way is 
    function removeInOrder (uint index) external
    {
    for (uint i= index; i  < data.length-1; i++)              // shifting one slot to every element
    {         
        data[i]=data[i+1];
    }
    data.pop();
    
    }
    
}
