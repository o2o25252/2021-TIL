# 스위프트 ✍🏻

## Comment 

```
// 코멘트

import UIKit

// var str = "Hello, playground"

// let value = arc4random_uniform(100)
// print("==> \(value)")

/*
여
러
줄
*/
```

## Tuple

```
let coordinates = (4,6) //(.0 4, .1 6)

let x = coordinates.0 // coordinates의 0 번쨰 //4
let y = coordinates.1 // coordinates의 1 번쨰 //6

//명시적으로 표현해보기

let coordinatesNamed = (x:2, y:3)// (x 2 ,y 3)

let x2 = coordinatesNamed.x// 2
let y2 = coordinatesNamed.y// 3

let (x3,y3) = coordinatesNamed

x3//2
y3//3
```
## Boolean


```
let yes = true
let no = false

let a = 5 
let b = 10

if a > b {
    print("--> a가 크다")
} else{
    print("--> b가 크다")// "--> b가 크다"
}
```
*논리연산자*
```
let name = "Jason"

let isJson = name == "Jason"
let isMale = false

let isJsonAndMale = isJson && isMale // false
let isJsonOrMail = isJson || isMale // true 
```
*삼항연산자*

```
let greetingMessage: String = isJson ? "Hellow Jason" : "Hello somebody"
//Hellow Jason
```

## Flow Control

```
var i = 0
while i <10 {
    print(i)
    
    if i == 5 {
        break
    }
    i += 1
}
```
```
i = 10
repeat{
    print(i)
    i += 1
}while i < 10
```

```
let coordinate = (x:10, y:10)

switch coordinate {
case ( 0,0 ):
    print("원점 이에여")
case (let x, 0):
    print("x축 이에요 , x: \(x)")
case (let x, let y ) where x == y:
    print("x 랑 y랑 같은 x,y = \(x) . \(y)")
case (let x,  let y)
    print("좌표 어딘가 x,y \(x),\(y)")
}
```
## Fuction and Optional

### Function 
```
//물건값과 갯수를 받아서 전체 금액을 출력하는 함수

//func printTotalPrice(price: Int, count: Int) {
//    print("Total price : \(price * count)")
//}
//printTotalPrice(price:1500, count: 5)

func printTotalPrice(가격 price: Int, 갯수 count: Int) {
    print("Total Price" \(price * count)")
}

printTotalPrice(가격:1500, 갯수: 5)
```
//In-out paramter

['value' is a 'let' constant] 라고 우리에게 알려준다. 처음에 Swift에서 파라미터는 기본적으로 상수(constant)이다. 상수는 변경할 수 없는데 value 값을 증가시키려고 시도했기 때문에 오류가 발생한 것이다. 자, 이제 이러한 문제를 inout 키워드로 해결해보자.
```
var value = 3 
func incrementAndPrint(_ value: inout Int){
    value +=1
    print(value)
}
incrementAndPrint(&value)
```
함수를 호출할 때 변수 명 앞에 앰퍼샌드(&) 기호를 붙여서 사용

### Optinal

- Forced unwrapping
- Optinal binding (if let)
- Optinal binding (guard)
- Nil colescing

```
//carName = nil
//print(carName!) //err

if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    pirnt("Car Name 없다")
}
```
```
func printParsedInt(from: String){
    if let parsedInt = Int(from){
    print(parsedInt)
} else{
    print("Int로 컨버팅 안된다.")
    }
}

//printParsedInt(from: "10") // 10
//printParsedInt(from: "hellow) // Int로 컨버팅 안된다.
```
```

func printPasedInt(from : Stirng){
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안된다.")
        return
    }
    print(parsedInt)
}

```
```
let MyCarName: String = carName ?? "모델" 
// carName 이 Nil 이라면 '모델' 이라는 디폴트 값
```


## Collection

### Array


