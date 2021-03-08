# 스위프트 로 코테 풀면서 새로 알게된 문법 기록 공간 

### readLine()
[REF](https://0urtrees.tistory.com/94)
-   공백단위의 문자열 입력을 받아 [Int] 배열로 변환하기
```
 // input : 1 2 3 4 5
 let intArr = readLine()!.split(separator: " ").map { Int($0)! }
 print(intArr) // [1,2,3,4,5]
```

먼저 *readLine() * 함수는 ```String?``` 값으로 입력값을 주는데, 이를 강제언래핑```!```해서 * String * 값으로 변환
이후 공백단위로 문자열을 쪼개기 위해서 *split*를 사용 , 그 후 해당 값을 원하는 타입으로 변환하는데 이때 map 을 사용한다. map 연산자의
클로저 내에는 앞서 split으로 공백단위로 쪼개진 Character 타입의 값들이 차례대로 맵핑이 되도록 설정합니다. 이제 변수에 할당해주면
intArr 은 [Int] 타입의 배열이 되며, 그 값은 [1.2.3.4.5] 이다. 

- 공백단위의 문자열을 입력을 받아 [String] 배열로 변환하기
```
let stringArr = readLine()!.split { $0 == " " }
print(stringArr) // ["1","2","3","4","5"]
```
- 붙어이는 readLine() 입력값을 [Int] 배열로 변환하기
Array() 생성자로 입력값을 전달해준다. 입력값을 먼저 배열화 해서 처리하는 방법

```
// input: 12345
let stringArr2 = Array(readLine()!).map { Int(String($0)! }
print(stringArr2) // [1, 2, 3, 4, 5]
```
readLine() 으로 받은 입력값을 강재 언래핑 후, String 타입으로 만든 뒤, Array로 감싸고 있다. 이렇게 하면
문자열은 [Character] 타입의 배열로 변환된다. 이를 map 을 통해 [String] -> [Character] -> [Int] 형으로 변환 작업을 거쳐서 
Int 타입의 배열을 얻어낼 수 있다. 


- 하나의 값 
```
// input: 100 
 var n = Int(readLine()!)!

```
## Count
```
let stringAttay=["add","bd","cccc","ddd","e"]
var threeCountArray = [String]()
for st in stringAttay{
    if st.count == 3 {
        threeCountArray.append(st)
    }
}

print(threeCountArray)
```
st.count 일때 st sms add , bd ...  등 으로 하나씩찍히는 데 이때 count 는 그 글자의 글자수 를 나타낸다. 

## 고차함수 

- map
```
let t = readLine()!.split(separator: " ").map{ Double($0)! }

```
- filter

- reduce


