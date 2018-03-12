pragma solidity ^0.4.18;
contract Random {
  function pseudoCoinflip() internal returns (bool) {
    uint _pseudoRandomNumber = uint(block.blockhash(block.number-1))%10 + 1;
    return bool((_pseudoRandomNumber%2) == 0);
  }
}
