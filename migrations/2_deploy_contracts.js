var Random = artifacts.require("./Random.sol");
var Random = artifacts.require("./KittyBox.sol");
var Random = artifacts.require("./Ransom.sol");

module.exports = function(deployer) {
  deployer.deploy(Random);
  deployer.deploy(KittyBox);
  deployer.deploy(Ransom);
};
