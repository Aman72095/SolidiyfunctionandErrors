// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SolidityErrorHandles {
   
    // uint public num = 0;
    uint256 public totalSupply;

    function minting(uint amount) public {
        require(amount > 0, "Amount must be greater than zero.");
        totalSupply += amount;
    }
    function modulous(uint _a, uint _b) public pure returns (uint){
        if(_b<1){
           
            revert("The mdoulous number should be greater than zero");
            
        }
        return _a%_b;
       }
        function square(uint _num1) public pure returns(uint256){
        assert(_num1>0);// The number whose square is to be find must be greater than zero
        return _num1*_num1;
    }
}
