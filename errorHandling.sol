//// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract smartContract{
    uint public number;

    function setValue(uint _number) public {
        require(_number > 0 , "Value must be a positive whole number");
        assert(_number!=number);
        number =_number;
        }

    function findingPercentage(uint _total, uint _markObtained) public pure returns(uint)
    {
        require(_markObtained !=0,"Total marks can never be zero");
        if(_total % _markObtained !=0)
        {
        revert("your obtained marks must be divisible by total number");
        }
        return _markObtained / _total;
        }
}
