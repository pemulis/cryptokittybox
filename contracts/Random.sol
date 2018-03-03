pragma solidity ^0.4.18;
contract Random {
    string public alive;

    function observe() public {
        uint random_number = uint(block.blockhash(block.number-1))%10 + 1;
        bool divis = bool((random_number%2) == 0);
        if (divis == true) {
          alive = 'Alive';
        } else {
          alive = 'Dead';
        }
    }
}
