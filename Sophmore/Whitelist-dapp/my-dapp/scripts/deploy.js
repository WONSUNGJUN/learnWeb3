const { ethers } = require('hardhat');

async function main() {
  //
  const Contract = await ethers.getContractFactory('Whitelist');
  //
  const deployedContract = await Contract.deploy(10);

  await deployedContract.deployed();

  console.log(`ContractAddress : ${deployedContract.address}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
