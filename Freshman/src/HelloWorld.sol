// HelloWorld.sol

// 사용할 컴파일러 버전을 정의한다.
pragma solidity ^0.8.10;

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
