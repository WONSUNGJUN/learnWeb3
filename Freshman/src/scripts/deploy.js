const { ethers } = require('hardhat');

async function main() {
  // 우리가 방금 전 만들었던(=배포할) Solidity 파일의 이름을 넣어주면 된다.
  // ethers.js의 ContractFactory는 새로운 스마트 계약을 배포하는 데 사용되는 추상화이므로 여기에서 Token은 토큰 계약의 인스턴스를 위한 팩토리이다.

  const nftContract = await ethers.getContractFactory('GameItem');

  const deployedNFTContract = await nftContract.deploy();

  console.log(`Contract address : ${deployedNFTContract.address}`);
}

main();
