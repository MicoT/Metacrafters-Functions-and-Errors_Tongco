// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract test {
    //The code below will require a number greater than 20
    function greaterRequire (uint _num) public pure {
        require(_num > 20, "Number needs to be greater than 20");
    }
    //The code below will require a number less than 20
    function lesserRequire (uint _num) public pure {
        require(_num < 20, "Number needs to be lesser than 20");
    }

    uint public check;
    //The code below uses assert to check if the value passed is 0
    function checkValid() public view {
        assert(check == 0);
    }
    //The code below uses assert to check if the value passed is 1
    function checkNotValid() public view {
        assert(check == 1);
    }
    //The code below will revert only if it is greater than 20
    function greaterRevert(uint _i) public pure {
        if (_i <= 20){
            revert("Value must be greater than 20");
        }
    }
    //The code below will revert only if it is lesser than 20
    function lesserRevert(uint _i) public pure {
        if (_i >= 20){
            revert("Value must be lesser than 20");
        }
    }

}