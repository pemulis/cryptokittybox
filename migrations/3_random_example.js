var RandomExample = artifacts.require("./RandomExample.sol");

module.exports = function(deployer) {
  deployer.deploy(RandomExample);
};
