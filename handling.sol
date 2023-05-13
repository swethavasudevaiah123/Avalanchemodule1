// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract handling{
    address owner=msg.sender;
    uint public a= 5;
    uint public b=15;
    function simpleadd()public view returns(uint){
        require(msg.sender==owner, "Only the owner can add");
        uint c= a + b;
        return c;
    }

    function comparison(uint256 d, uint256 e) public pure returns(bool){
        assert(e>d);
        return true;
    }

    function even() public view returns(uint){
        if(a*(b*b)%2!=0){
            revert("Odd number");
        }
        return a*(b*b);
    }
}
