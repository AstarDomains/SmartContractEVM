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
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  //await hre.run('compile');

  // We get the contract to deploy
  
  await hre.run('compile');
  
  const {deploy} = hre.deployments;
  
  const {deployer} = await hre.getNamedAccounts();
  
  const contract = await deploy('AstarWeb3Domain', {
      from: deployer,
      args: [],
     log: true
  });
}

main().then(() => process.exit(0))
	  .catch((error) => {
		console.error(error);
		process.exit(1);
	  });;

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.


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