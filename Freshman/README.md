
## Freshman Track

### Basic Programming
  - [프론트 엔드 개발 필수 사항 - 나중에 읽어볼 것](https://betterprogramming.pub/frontend-development-the-essentials-1c1290b43590)

<br>

### 01. What is **Blockchain**?

비트코인은 **나토시 나카모토** 라는 익명의 개발자가 2008년 ["Bitcoin: A Peer-to-Peer Electronic Cash System"](https://bitcoin.org/bitcoin.pdf) 라는 백서를 출시하여 2009년에 탄생하였다.

**블록체인**이란 P2P 노드 네트워크에서 실행되는 분산 데이터베이스이다.
블록체인에서의 **노드**란 블록체인 소프트웨어를 실행하는 컴퓨터를 의미한다.
새로운 블록을 생성하고 트랜잭션 검증 및 네트워크 유지를 위해 노드를 운영하는 사람들을 **채굴자**라 부르며, 이 사람들은 위와 같은 행위에 대한 **보상**으로 비트코인을 받게 되는 과정 까지가 블록체인이다.

![img](https://i.imgur.com/wjK9Foy.png) 
블록체인의 첫 시작 블록을 **제네시스 블록**이라 하며, 모든 트랜잭션은 모든 노드에 복제되어 분산된다.
이러한 블록은 암호학적으로 검증 가능한 방식으로 사슬처럼 연결되어 있어 블록체인이라 불리며 역사적으로 추적할 수 있다.

<br>

### 02. What is **Web3**?
  - [Web1.0, 2.0, 3.0 에 대한 설명](https://www.freecodecamp.org/news/what-is-web3/)
  - [Web3 vs Web2 비교 글](https://www.xenonstack.com/blog/web3-features-and-challenges)

Web1.0 : read

Web2.0 : read + write

Web3.0 : read + write + own

<br>

### 03. What is **ETH**?

이더리움은 **스마트 컨트랙트**을 지원하는 분산형 블록체인 네트워크이다.
개발자는 **이더리움 가상 머신(EVM)**의 이더리움 네트워크에서 실행할 수 있는 **dApp** 또는 분산 어플리케이션을 구축할 수 있다.

**스마트 컨트랙트** 란 
**ERC20 토큰** 이란
**ERC721 과 ERC1155**

<br>

### 04. **Crypto-Wallets**

블록체인에서의 **주소(address)** 란 계정을 나타내기 위해 암호화되어 생성된 텍스트 문자열이다.
**개인 키(private key)** 란 절대 다른사람에게 알려줘서는 안된다.

암호화폐 지갑은 

지갑과 

<br>

### 05. **Remix IDE**
- https://remix.ethereum.org/

**Remix IDE** 는 이더리움 dApp 개발을 위한 오픈 소스, 웹 및 데스크탑 통합 개발 환경이다. **Solidity** 라는 언어를 사용하며 스마트컨트랙트를 테스트, 디버깅, 배포까지 진행할 수 있다.

### 06. **Solidity**
솔리디티란 스마트 컨트랙트를 구현하기 위한 객체 지향 프로그래밍 언어이며, EVM을 대상으로 설계되었다. 정적으로 유형이 지정되고 상속, 라이브러리 및 다른 기능 중에서 복잡한 사용자 정의 유형을 지원한다.

**솔리디티에서의 변수 타입**
1. Local : 함수 내에서 선언되고 블록체인에 저장되지 않는다.

2. State : 스마트 계약의 상태를 유지하는 함수 외부에 선언된다. 블록체인에 저장된다.

3. Global : 블록체인에 대한 정보를 제공한다. 런타임 중에 이더리움 가상 머신(EVM)에 의해 주입된다. (트랜잭션 전송자, 블록 타임 스탬프, 블록 해시 등과 같은 항목들이 포함된다)

- 변수의 범위는 값이 아니라 선언된 위치에 따라 정의된다. 지역 변수의 값을 전역 변수로 설정한다고 해서 전역 변수가 되지는 않는다. 

```
//HelloWorld.sol

// 사용할 컴파일러 버전을 정의한다.
pragma solidity ^0.8.7;

// HelloWorld 라는 이름의 계약을 생성하여 시작한다.
contract HelloWorld {
     // unsignedInteger 로써 부호가 없는 정수
     // uint8 : 0 ~ 2**8 -1
     // uint256 : 0 ~ 2 ** 256 -1 
     // public 은 변수에 내부적으로 엑세스할 수 있음을 의미한다. 계약에 의해서 외부에서도 읽을 수 있다.
     uint8 public u8 = 10;
     uint public u256 = 600;
     uint public u = 1230;

     // int 유형에는 음수(-)가 허용이 된다.
     // int256 : -2 ** 255 ~ 2 ** 256 -1
     int public i = -123;

     // address 이더리움의 주소를 나타내는 변수
     address public addr = 0x1bC301F191806beae0d47567D37866A37667e0CB;

     // bool 참과 거짓을 나타내는 변수
     bool public defaultBoo1 = false;

     // 변수에 값을 부여해주지 않으면 기본 값을 갖는다.
     bool public defaultBoo2; // False
     uint public defaultUint; // 0
     int public defaultInt; // 0
     address public defaultAddr; // 0x0000000000000000000000000000000000000000;

     function doSometing() public {
          /* 
          지역 변수
     */

          uint ui = 456;

          /*
          전역 변수
     */

          /*
          block.timestamp는 현재 블록의 타임 스탬프를 알려준다.
          msg.sender는 doSomething 함수의 주소를 알려준다.
     */
          uint timestamp = block.timestamp;
          address sender = msg.sender; 
     } 

}
```

**함수와 반복문과 조건문(Functions | Loops | If-Else)**

```
//Conditions.sol

pragma solidity ^0.8.7;

contract Conditions {
     uint public num;

     function set(uint _num) public {
          num = _num;
     }

     function get() public view returns (uint) {
          return num;
     }
}


```

<br>

### 07. Ethers.js 를 이용해서 Dapp 을 만들어보자

- 간단한 웹 페이지 제작
- 솔리디티를 이용한 스마트 컨트랙트 제작
- Ethers.js 를 사용한 웹 페이지와 스마트 컨트랙트를 연결


### 08. ERC-20 TOKEN 을 만들어보자
**ERC**(Ethereum Request for Comment) 는 이더리움에서 대체 가능한 토큰의 기술 사양을 설명하는 표준(규정)이다.

ERC-20과 같은 표준을 따르면 ERC-20 토큰을 사용하는 애플리케이션 개발자는 개별적으로 특수 코드를 작성할 필요 없이 모든 ERC-20 토큰을 쉽게 지원할 수 있기때문이다. 예시로, 유니스왑에서 다른 토큰과 교환할 수 있는 원리를 생각해보면 이해하기 쉬울 것이다.



---

https://www.learnweb3.io/

