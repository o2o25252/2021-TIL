# 코트스테이츠 코딩테스트 

---

## transformFirstAndLast

### 문제

배열을 입력받아 차례대로 배열의 첫 요소와 마지막 요소를 키와 값으로 하는 객체를 리런해야 합니다.

### 입력

인자 1:  arr `string` 타입을 요소로 갖는 배열 

### 출력

객채를 리턴해야 합니다.

### 주의 사힝

- 빈 배열을 입력받은 경우, 빈 객체를 리턴해야 합니다.
- 입력으로 받는 배열을 수정하지 않아야 합니다.

###  입출력 예시

```
let arr = ['Queen', 'Elizabeth', 'Of Hearts', 'Beyonce'];
let output = transformFirstAndLast(arr);
console.log(output); // --> { Queen : 'Beyonce' }

arr = ['Kevin', 'Bacon', 'Love', 'Hart', 'Costner', 'Spacey'];
output = transformFirstAndLast(arr);
console.log(output); // --> { Kevin : 'Spacey' }
```

1. 들어오는 배열에 0번쨰 인덱스 와 마지막 인덱스 를 뽑아서 
2. 0번쨰를 키 마지막 를 값 으로 넣어서 반환 해준다.

```
function transformFirstAndLast(arr){
        let key = arr[0];
        let value = arr[arr.length-1];
        
        let a = {} 
        a = { key : value }
    
    }
```
 첫 번쨰 시도 에 실패 요인은 저 key 부분이 변수 key 가아닌 그저 스트링 "key" 를 글로써 들어간다 
 
 ```
 function transformFirstAndLast(arr){
         let result = {} 
         if(arr.length > 0 ) {
            result[arr[0]] = arr[arr.length-1];
         }
         return result
         }
     
     }
 ```
 
 ---
 
 ## powerOfTwo
 
 ### 문제

수를 입력받아 2의 거듭제곱인지 여부를 리턴해야 합니다.

 ### 입력

 인자 1:  num `number` 타입의 정수( `num` >=1) 

 ### 출력

 `boolean` 타입을 리턴해야 합니다

 ### 주의 사힝

 - 반복문(while)문을 사용해야 합니다
 - 2의 0승은 1입니다.
 - Number.isInteger, Math.log2, Math.log 사용은 금지됩니다.

 ###  입출력 예시
```
let output1 = powerOfTwo(16);
console.log(output1); // true
let output2 = powerOfTwo(22);
console.log(output2); // false

```

1. 입력받은 수 n 을 n/2 를 했을때 1 이라면 그건 2의 제곱 일 것이다. 
2. 또한 2의 제곱이라면 2 와 같거나 커야 하므로 반복의 조건은  `n >=2` 이어야 한다.

```
function powerOfTwo(num) {
  // TODO: 여기에 코드를 작성합니다.
  let n = num; // 어떤수
  while( n >= 2){ // 어떤 수 가 2보다 크거나 같을떄까지 반복
    n = n/2;  // 어떤수  n에다가 나누기 2 를 한다. 
      // 이렇게 해서 n 이 위의 조건이 충족에 안될떄 까지 나누어 지면 
      //while 문을 바빠져나온다. 
      } if( n === 1){ //그떄의 수 n 이 1 과 같다면 
    return true; // n 은 2의 거듭제곱 이므로 true
      } else{
    return false;
  }   
}
```
[REF]

```
function powerOfTwo(num) {
  if (num === 1) {
    return true;
  }

  if (num % 2) {
    return false;
  }

  let powered = 2;
  while (powered < num) {
    powered = powered * 2;
  }

  return powered === num;
}
```


