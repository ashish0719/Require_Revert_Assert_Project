// SPDX-License-Identifier: MIT
// Require, assert and the revert
pragma solidity 0.8.7;

contract divison {
    uint public result;

    
    function divide(uint a, uint b) public {
   
        require(b != 0, "Divisor cannot be zero");

       
        result = a / b;

      
        assert(result * b == a);
       
//  performs integer division: 10 / 3  =3.33333 but solidty results in 3.
// assert(result * b == a); checks 3 * 3 == 10, which fails because 3 * 3 is 9, not 10
    }

   
    function divideWithRevert(uint a, uint b) public {
       
        if (b == 0) {
            revert("Divisor cannot be zero");
        }

        
        result = a / b;

      
        assert(result * b == a);
    }

}