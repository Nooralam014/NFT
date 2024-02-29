const Migrations = artifacts.require("testF");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
