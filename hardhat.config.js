
require('hardhat-deploy');
require('hardhat-deploy-ethers');
require("hardhat-change-network");
require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-etherscan");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: {
    version: "0.8.12",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  defaultNetwork: "Shibuya",
  namedAccounts: {
    deployer: 0
  },
  networks: {
    ropsten: {
      url: '',
      accounts: ['']
    },
	Shibuya: {
      url: 'https://rpc.shibuya.astar.network:8545',
      accounts: [''],
	    chainId: 81
  },
	Astar: {
      url: 'https://rpc.astar.network:8545',
      accounts: [''],
	    chainId: 592
  },
  etherscan: {
	  apiKey: {
		  ropsten: ""
	  }
  }
};
