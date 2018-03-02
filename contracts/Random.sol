pragma solidity ^0.4.18;
contract Random {
    uint public number;

    function set() public {
        uint random_number = uint(block.blockhash(block.number-1))%10 + 1;
        number = random_number;
    }
}
