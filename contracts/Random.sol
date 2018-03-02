pragma solidity ^0.4.18;
contract Random {
    uint public alive;

    function observe() public {
        uint random_number = uint(block.blockhash(block.number-1))%10 + 1;
        alive = random_number;
    }
}
