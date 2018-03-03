pragma solidity ^0.4.18;
contract Random {
  string public lastCat;
  uint[] public deadForNow;

  function getListLength() constant returns (uint) {
    return deadForNow.length;
  }

  function mostRecentlyDeceased() constant returns (uint) {
    return deadForNow[(deadForNow.length - 1)];
  }

  function observe(uint catId) public {
    uint random_number = uint(block.blockhash(block.number-1))%10 + 1;
    bool divis = bool((random_number%2) == 0);
    if (divis == true) {
      lastCat = 'Alive';
    } else {
      lastCat = 'Dead';
      deadForNow.push(catId);
    }
  }
}
