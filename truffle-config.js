var infuraEndpoint = "https://rinkeby.infura.io/v3/43d83d69a1cd4abbbb5a21696eea8847";
const HDWalletProvider = require('truffle-hdwallet-provider');
const privateKeys = [
    ]
module.exports = {
 networks: {
   etherscan: {
   provider: () => new HDWalletProvider(privateKeys, infuraEndpoint),
   network_id: 4,
   gas: 4000000,
   gasPrice: 100000000000,
  }
 },
 compilers: {
    solc: {
      version: "0.5.0",
      settings: {
        optimizer: {
          enabled: true
        }
      }
    }
  }
};
