// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/**
* @title Sample Raffle Contract
* @author Saket Hatwar
* @notice This Contract is a smiple Raffle
* @dev Implements ChainlLink VRFv2
 */


contract Raffle {

    error notEnoughETH();
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee){
        i_entranceFee = entranceFee;
    }

    function enterRaffle() external payable  {
        if(msg.value < i_entranceFee){
            revert notEnoughETH();
        }
    }

    function selectWinner() public  {


    }



    /** getter Functions */

    function getEntranceFee() external view returns (uint256) {
        return this.i_entranceFee;
    }

}