import UIKit

var str = "Hello, playground"

let value = arc4random_uniform(100)
print("==> \(value)")

// 튜플

let coordinates = (4,6)

let x = coordinates.0 // coordinates의 0 번쨰
let y = coordinates.1 // coordinates의 1 번쨰

//명시적으로 표현해보기

let coordinatesNamed = (x:2, y:3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3,y3) = coordinatesNamed

x3
y3

// Boolean

let yes = true
let no = false

let a = 5
let b = 10

if a > b {
    print("--> a가 크다")
} else{
    print("--> b가 크다")
}

//논리연산자
let name = "Jason"

let isJson = name == "Jason"
let isMale = false

let isJsonAndMale = isJson && isMale
let isJsonOrMail = isJson || isMale
//삼항연산자

let greetingMessage: String = isJson ? "Hellow Jason" : "Hello somebody"
