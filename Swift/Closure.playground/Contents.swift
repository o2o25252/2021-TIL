import UIKit
//
//var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//        return a * b
//}

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
