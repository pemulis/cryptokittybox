pragma solidity ^0.4.18;
contract Random {
  string public lastCat;
  uint[] public sematary;

  mapping (uint => string) public catState;

  function getListLength() public view returns (uint) {
    return sematary.length;
  }

  function mostRecentlyDeceased() public view returns (uint) {
    return sematary[(sematary.length - 1)];
  }

  function observe(uint catId) public {
    uint random_number = uint(block.blockhash(block.number-1))%10 + 1;
    bool divis = bool((random_number%2) == 0);
    if (divis == true) {
      lastCat = 'Alive';
      catState[catId] = 'Alive';
    } else {
      lastCat = 'Dead';
      catState[catId] = 'Alive';
      sematary.push(catId);
    }
  }
}
