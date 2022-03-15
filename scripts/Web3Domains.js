// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
const hre = require("hardhat");
//const hredeploy = require("hardhat-deploy");
const express = require('express');
const app = express();
const port = 9000;

async function main() {
  // We get the contract to deploy
  
  await hre.run('compile');
  
  //const {deploy} = hre.deployments;
  
  //const {deployer} = await hre.getNamedAccounts();
  
  // use hardhat-deploy
  //const contract = await deploy('Web3Domains', {
  //    from: deployer,
  //    args: [],
  //    log: true
  //});
  
  const [deployer] = await hre.ethers.getSigners();
  
  console.log("Deploying contracts with the account:", deployer.address);

  console.log("Account balance:", (await deployer.getBalance()).toString());
  
  const MyToken = await hre.ethers.getContractFactory("Web3Domains");
  
  const contract = await MyToken.deploy();

  await contract.deployed();

  console.log("Contract deployed to:", contract.address);
}

main().then(() => process.exit(0))
	  .catch((error) => {
		console.error(error);
		process.exit(1);
	  });;

app.get('/deploy', (req, res) => {
	main()
	  .then(() => process.exit(0))
	  .catch((error) => {
		console.error(error);
		process.exit(1);
	  });
});

app.listen(port, () => {

});