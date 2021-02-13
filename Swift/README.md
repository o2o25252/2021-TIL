# 스위프트 ✍🏻

    문법 기록

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


```
var evenNumbers: [int] = [2,4,6,8]
//let evenNumbers2: Array<Int> = [2,4,6,8]

//let 은 변경하지 않는다 ?!  == const
// null 로 처음에 넣어두는 것은 괜찮
evenNumbers.append(10)
evenNumbers += [12,14,16]
evenNumbers.append(contentOf: [18,20])

//let isEmpty = evenNumbers.isEmpty

evenNumbers.count // el 몇개인지
print(evenNumbers.first)
//evenNumbers = []
let firstItem = evenNumbers.first
// optinal(2) 로 나오는데 이는 값이 있을 수 도없을 수도 있기에 그렇다.

//옵셔널 바인딩

if let firstEl = evenNumbers.first{
    print("fitst item is : \(fitstEl)")
}
evenNumbers.min()
evenNumbers.max()

let firstThree = evenNumbers[0..2]
evenNumbers.contains(3)

//특정 인덱스에 값 삽입
evenNumbers.insert(0, at: 0)

evenNumbers.removeAll()

evenNumbers.remove(at:0)

evenNumbers[0] = -2
evenNumbers.swapAt(0,9)

for (index, num) in evenNumbers.enumerated(){
    print("idx: \(index), value: \(num)")
}

evenNumbers.dropFirst(3)//실제로 영향을 주지는 않고 앞에 3개를 제거후 보여주기만 한다..
dropLast()

let firstThree = evenNumbers.prefix(3) // 앞에 3개 만보기
let lastThree = evenNumbers.suffix(3)
```

## Dictionary
```
var str = "Hello, playground"

var scoreDic: [String: Int] = ["Jason":80, "Jay":95,"Jake":90]
//var scoreDic: Dictinary<String, Int> = ["Jason":80, "Jay":95,"Jake":90]

if let score = scoreDic["Jason"]{
    score
}else {
    //.score 없음
}

scoreDic.isEmpty
//scoreDic = [:]
scoreDic.count
//기존 업데이트
scoreDic["Jason"] = 99
scoreDic

//추가
scoreDic["Jack"] = 100
scoreDic
//제거
scoreDic["Jack"] = nil
scoreDic


//For loop
for (name,score) in scoreDic{
    print("\(name), \(score)")
}

for key in scoreDic.keys{
    print(key)
}
/*
 Jason, 99
 Jake, 90
 Jay, 95
 Jason
 Jake
 Jay
 */
var myInfo: [String:String] = ["name":"lim","job":"ios engineer","city":"seoul"]

myInfo["city"] = "Busan"

func printNameAndCity(dic: [String: String]){
    if let name = dic["name"], let city = dic["city"]{
        print(name,city)
    } else{
        print("cannot find")
    }
}
printNameAndCity(dic: myInfo)
```
## set

```
//순서가 없다.
//유일하다
//중복이 없는 유니크한 것들을 관리
//어레이와 유사
var someSet : Set<Int> = [1,2,3,4,1,2]

someSet.isEmpty
someSet.count

someSet.contains(4)

someSet.insert(5)
someSet
(" gk
someSet.remove(1)
someSet


```
## Closure

이름
없는 함수 

```
var multiplyClosure: (Int, Int) -> Int = { $0 * $1 }

let result = multiplyClosure(4,2)


func operateTwoNum(a: Int, b: Int, opertion: (Int, Int) -> Int) -> Int {
    let result = opertion(a,b)
    return result
}

operateTwoNum(a: 4, b: 2, opertion: multiplyClosure)

var addClosure: (Int, Int) -> Int = {a,b in return a+b}

operateTwoNum(a: 4, b: 2, opertion: addClosure)

operateTwoNum(a:4, b: 2, opertion: {a,b in return a/b})
```
```
// Trailing Closure

func someSimpleFuncion(message: String, choSimpleClosure: () -> void) {
    print("함수에서 호출이 되었어요, 메세지는 \(message)")
    choSimpleClosure()
}

someSimpleFunction(message: "메로나", choSimpleClosure: {
    print("헬로")
})

someSimpleFunction(message: "로나"){
    print("하이이")
}
// 어떻게 이렇게 해도 둘이 같을까...?
```

## Structure

- 스트럭쳐 타입은 복사 되고
- 클레스는 참조 된다

```
//거리구하는 함수
func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
    // 피타고라스
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * DistanceY)
    return distance
}

// 가장 가까운 스토어 구해서 프린트 하는 함수
func printClosesStore(currentLocation:(x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]) {
    var closestStroeName = ""
    var closestStroeDistance = Double.infinity
    
    for stroe in stores {
        let distanceToStore = distance(current: currentLocation, target: (x :store.x y: store.y)))
        closesStoreDistance = min(distanceTostroe, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            }
        }
        print("Closest store: \(closestStoreName)")
}

 스트럭쳐로 줄여보자 (미구현)
```
```
struct Lecture {
    let name: String
    let instructor: String
    let numOfStudent: Int
 }
 
 func printLectureName(from instructor: String, lectures: [Lecture]){
 
 let lectureName =lectures.frist { lec)  -> Bool in return lec.instructor == instructor
 }.? name
 
 print("강사님 강의는요: \(lectureName)")
 }
 let lec1 =Lecture(name: "IOS Basic", instructor: "Jason" , numOfStudent: 5)
 let lec2 =Lecture(name: "IOS Advanced", instructor: "Jack" , numOfStudent: 5)
 let lec3 =Lecture(name: "IOS Pro", instructor: "JIM", numOfStudent: 5)
 let lectures =[lec1, lec2,lec3]
 
 
```
### Protocol
준수 

### Property




