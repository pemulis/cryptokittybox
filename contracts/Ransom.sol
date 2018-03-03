pragma solidity ^0.4.18;
contract Ransom {
  address public catnapper;
  uint public price;
  uint[] public safe;

  event PayRansom(address backer, uint amount, uint catId);

  /* Constructor function */
  /*
  function Ransom (
    address ifSuccessfulSendTo,
    uint ransomPrice
  ) {
    catnapper = if ifSuccessfulSendTo;
    price = ransomPrice * 1 ether;
  }
  */
}
