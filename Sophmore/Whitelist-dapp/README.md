# 화이트리스트 디앱 만들어보기

![image](https://user-images.githubusercontent.com/90569731/176658289-8707292c-f7e9-42b7-a910-62571a0bb2e9.png)

## Setup
```
cd my-dapp
npm install
// .env 파일 수정하기
ALCHEMY_API_KEY_URL=""
RINKEBY_PRIVATE_KEY=""
```
<details> 
<summary>detail packages</summary>
<div markdown="1">
     
     npm init -y
     npm insatll --save-dev hardhat
     npx hardhat
     npm install --save-dev @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers
     npm install --save-dev dotenv
     ```
</div>
</details>

<!-- ## Test
```
npx hardhat test
``` -->

## Contract Deploy
```
npx hardhat compile
npx hardgat run script/deploy.js --network rinkeby
```

Contract Address : 0xEFD4155D2a481997825Fd2340420f971dA1Ccc20

Etherscan 확인 : https://rinkeby.etherscan.io/address/0xEFD4155D2a481997825Fd2340420f971dA1Ccc20

---

## Setup
```
cd my-app
npm install
// 위에서 배포했던 abi, 컨트랙트 주소로 수정하여 페이지와 연결
cd constants
vi index.js 
export const abi = {}
export const WHITELIST_CONTRACT_ADDRESS = '';
```

<details> 
<summary>detail packages</summary>
<div markdown="1">
     
     npm init -y
     npx create-next-app .
     npm install web3modal
     npm install ethers
     ```
</div>
</details>

## Test
```
npm run dev
```

## Run
```
npm run build
npm run start
```

배포 링크 : https://whitelist-dapp-wonsungjun.vercel.app/

