var Random = artifacts.require("./Random.sol");
var KittyBox = artifacts.require("./KittyBox.sol");
var Ransom = artifacts.require("./Ransom.sol");

module.exports = function(deployer) {
  deployer.deploy(Random);
  deployer.deploy(KittyBox);
  deployer.deploy(Ransom);
};
