## Sophmore Track

### React and Next.js
- 무료 강의 추천
  - https://nomadcoders.co/react-for-beginners/lobby (react.js)
  - https://nomadcoders.co/nextjs-fundamentals/lobby (next.js)

---
### Gas

**Gas** 란 이더리움 네트워크를 이해하는 데 가장 중요하고 기본적인 측면 중 하나이며, 가스는 이더리움 네트워크의 계산 단위이다. Gas unit 은 이더리움에서 트랜잭션을 실행하는 데 필요한 계산 노력의 양을 측정하는 데 사용된다. 각 트랜잭션을 실행하려면 약간의 계산 리소스가 필요하기 때문에 일반적으로 Gas fee 또는 Transaction fee 라고 하는 **수수료** 가 필요하다. 여기서 말하는 수수료는 이더리움이고, 가스는 이 수수료를 결정하는 더 작은 단위 개념이라고 보면 될 것 이다. ([자세한 링크](https://ethereum.org/en/developers/docs/gas/) | [쉬운 설명](https://ethgas.io/kr/)) 

(tip)가스는 [2021년 8월 5일 이더리움 런던 하드포크](https://ethereum.org/en/history/#london)에서 [EIP-1559](https://eips.ethereum.org/EIPS/eip-1559) 를 도입하면서 이더리움의 수수료 및 가스 환불 처리 방식에 대한 업그레이드를 진행하였다.

- 런던 업데이트 전,
     
     `gas fee = gas spent * gas price` 라는 공식을 갖는다.

     ** 1 Gwei = 0.000000001 ETH (10^9) <br>
     ** Wei = 0.000000000000000001 ETH (10^18) <br>
     위와 같은 단위에 대한 유래가 궁금하다면 ([링크](https://www.languagesandnumbers.com/articles/en/ethereum-ether-units/))

가스 가격은 어떻게 형성되는가?

     가스 가격이 높은 거래는 채굴자가 먼저 채굴할 때 더 높은 팁을 받기 때문에 블록에 포함되는 우선 순위가 더 높습니다. 따라서 가스 가격은 기본적으로 공개 경매 또는 광부에게 뇌물과 같은 역할을 합니다. 채굴자에게 가장 높은 가격 또는 가장 높은 뇌물을 기꺼이 지불하려는 사람은 낮은 가격의 거래보다 더 빨리 거래를 포함합니다.

     스마트 계약이 바이트코드로 컴파일되면 이더리움 네트워크에 배포되기 전에 OPCODES로 컴파일됩니다. 이더리움 가상 머신에서 직접 실행할 수 있는 간단한 작업입니다. Intel 또는 AMD CPU에서 직접 실행할 수 있는 기본 작업과 유사하다고 생각할 수 있습니다. 이러한 OPCODE에는 ADD, MUL, DIV, SUB, SHA3 등과 같은 기본 작업이 포함됩니다.

     각 OPCODE에는 고정된 가스 비용이 있습니다. 스마트 계약 내 특정 기능의 가스 비용은 모든 OPCODES의 가스 비용 합계입니다. 관심 있는 경우 https://github.com/crytic/evm-opcodes 에서 모든 OPCODE 및 관련 가스 비용 목록을 찾을 수 있습니다.

     따라서 실행하는 데 더 많은 OPCODES가 필요한 더 복잡한 트랜잭션은 ETH를 한 계정에서 다른 계정으로 전송하는 것과 같은 단순한 트랜잭션보다 더 많은 가스(단위)를 사용하게 됩니다.


- 런던 업데이트 이후,

     `gas fees = gas spent * (base fees + priority fees)`

     기본 요금 외에 팁(우선 요금)이라는 개념이 도입

     이더리움에 가변 크기 블록을 도입

(추가 작성 예정)

---
### Mining

**마이닝**은 이더리움 블록체인 네트워크에 추가할 새로운 트랜잭션 블록을 생성하는 데 도움이 되는 프로세스이다. 또한 공격으로부터 네트워크를 안전하게 유지하는 데에도 도움이 된다.

**채굴자**는 블록체인 네트워크에서 암호화폐 거래를 검증하고 이를 원장에 추가할 책임을 가지며, 이 프로세스는 디지털 화폐의 **이중 지출**을 방지하는데 큰 역할을 한다.

[(채굴 비용 계산기)](https://etherscan.io/ether-mining-calculator)

이더리움의 채굴 과정
     
     1. ㅇㄴ
     2. ㅇㄴㅇㄴ
     3. ㅇㄴㅇㄴㅇㄴ
     4. ㅇㄴㅇㄴㅇㄴㅇㄴ
     5. ㅇㄴㅇㄴㅇㄴㅇㄴㅇㄴㅇ

- https://sandbox.eth.build/
- 마이닝풀 - https://etherscan.io/stat/miner?range=7&blocktype=blocks


---

- [Whitelist Dapp을 만들어보자](Whitelist-dapp/README.md)
- [NFT Collection 디앱을 만들어보자](NFT-collection/README.md)
- [ICO 디앱을 만들어보자](ICO/README.md)




     



