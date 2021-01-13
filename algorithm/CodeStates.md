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
 두번째 시도 객체 를 미리 선언해두고 그곳에 직접 넣어주었다
 
