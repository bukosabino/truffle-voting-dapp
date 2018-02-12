var Voting = artifacts.require("Voting");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(Voting);
};
