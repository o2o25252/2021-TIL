# 리액트 다루는 기술 

+ [비구조화 할당 문법](https://github.com/o2o25252/2021-TIL/blob/main/react/react.md#%EB%B9%84%EA%B5%AC%EC%A1%B0%ED%99%94-%ED%95%A0%EB%8B%B9-%EB%AC%B8%EB%B2%95)
+ [useState](https://github.com/o2o25252/2021-TIL/blob/main/react/react.md#usestate)
+ [State 주의사항](https://github.com/o2o25252/2021-TIL/blob/main/react/react.md#state-%EC%82%AC%EC%9A%A9%EC%8B%9C-%EC%A3%BC%EC%9D%98-%EC%82%AC%ED%95%AD)


---

## 비구조화 할당 문법

 비구조화 할당 문법을 통해 props  내부 값 추출하기
 ```
  const MyComponent = props => {
   const { name, children } = props;
    return ( 
     <div>
      내 이름은 { name } 탐정이죠. <br/>
      이건 { children } 입니다.
      </div>
      );
   };   
 ```
 이렇게 하면 더 짧은 코드로 사용 가능 
 원래는 ```this.props.name``` 이런 식 으로 하나 하나 해야 했다. 
 
 이렇게 객체에서 값을 추출하는 문법은 비구조화 할당 이라고 한다. (구조 분해 문법)
 함수의 파라미터 부분에서도 사용 가능 하다 . 
 ```
  const MyComponent = ({ name, children}) => {
   .
   .
   .
   };
 ```
 
 배열 또한 비구조화 할당 이가능하다 .
 
 ```
 const array = [1,2]
 const one = array[0]
 const two = array[1]
 ```
 이걸 비구조화 할당 을통해 
 ```
 const array = [1,2]
 const [ one , two ] = array // 비구조화 할당
 ```
 이렇게 사용 가능하다 

---

## useState 

useState 의 함수의 인자에는 상태의 초깃값을 넣어 준다. 
값의 형태는 자유 이며 , 함수를 호출하면 배열이 반환된다. 
배열의 첫 번쨰 원소는 ```현재상태``` , 두 번째 원소는 상태를 바꾸어 주는 ```함수```이다.

useState  는 여러번 사용 도 가능하다 .

```
const Say = () => {
 const[message, setMessage] =useState('');
 const onClickEnter = () => setMessage('안녕히가세요!');
 const onClickLeave = () => setMessage('잘가요!');
 
 const [color, setColor] = useState('black');
 
 return(
  <div>
   <button onClick={onClickEnter}>입장</button>
   <button onClick={onClickLeave}>퇴장</button>
   <h1 style={{ color }}>{message}</h1>
   <button style={{ color: 'red'}} onClick={() => setColor('red')>
   빨강색
   </button>
   
   <button style={{ color: 'grenn'}} onClick={() => setColor('grenn')>
   초록
   </button>
   
   <button style={{ color: 'blue'}} onClick={() => setColor('blue')>
   파랑
   </button>
  </div>
   );
  };
```
## State 사용시 주의 사항! 

useState 를 통해 전달받은 세터 함수를 사용해야 합니다.
```
 const [object, setObject] = useState({a: 1, b: 1});
 object.b = 2 ;
```
#### 그럼 배열이나 객체를 업데이트해야 할 때는 어떻게 해야 할까요..?! 

이떄는 배열이나 객체 사본을 만들고 그 사본에 값을 업데이트한 후, 그 사본의 상태를 setState 혹은 세터 함수를 통해 업데이트해준다.

객체에 대한 사본을 만들 떄는 *spread* 연산자를 사용하여 처리하고 ,
배열에 대한 사본을 만들 떄는 배열의 *내장 함수* 들을 활용합니다. 
























