// deploy/00_deploy_my_contract.js
module.exports = async ({getNamedAccounts, deployments}) => {
    const {deploy} = deployments;
    const {deployer} = await getNamedAccounts();
	console.log("Deploying:", contract.address);
};
module.exports.tags = ['Web3Domains'];
