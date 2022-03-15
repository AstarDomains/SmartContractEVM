// deploy/00_deploy_my_contract.js
module.exports = async ({getNamedAccounts, deployments}) => {
    const {deploy} = deployments;
    const {deployer} = await getNamedAccounts();
    const contract = await deploy('AstarWeb3Domains', {
      from: deployer,
      args: [],
      log: true
    });
	
	console.log("Deploying:", contract.address);
	
	return contract.address;
};
module.exports.tags = ['AstarWeb3Domains'];
