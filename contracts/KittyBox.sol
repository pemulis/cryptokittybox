pragma solidity ^0.4.18;

import "./Random.sol";

contract KittyBox is Random {
  string internal lastCat;
  uint[] internal sematary;

  mapping (uint => string) internal catState;

  function getListLength() public view returns (uint) {
    return sematary.length;
  }

  function mostRecentlyDeceased() public view returns (uint) {
    return sematary[(sematary.length - 1)];
  }

  function observe(uint catId) public {
    bool _alive = pseudoCoinflip();
    if (_alive == true) {
      lastCat = 'Alive';
      catState[catId] = 'Alive';
    } else {
      lastCat = 'Dead';
      catState[catId] = 'Alive';
      sematary.push(catId);
    }
  }
}
