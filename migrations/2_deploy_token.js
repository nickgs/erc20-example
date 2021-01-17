const LIBC = artifacts.require("MyToken");

module.exports = function(deployer) {
  const _name = "Long Island Blockchain Token";
  const _symbol = "LIBC";
  const _decimals = 18
  deployer.deploy(LIBC, _name, _symbol);
};
