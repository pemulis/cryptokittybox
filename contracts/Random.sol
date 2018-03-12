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

  function observe(uint _catId) public {
    uint _pseudoRandomNumber = uint(block.blockhash(block.number-1))%10 + 1;
    bool _divis = bool((_pseudoRandomNumber%2) == 0);
    if (_divis == true) {
      lastCat = 'Alive';
      catState[_catId] = 'Alive';
    } else {
      lastCat = 'Dead';
      catState[_catId] = 'Alive';
      sematary.push(_catId);
    }
  }
}
