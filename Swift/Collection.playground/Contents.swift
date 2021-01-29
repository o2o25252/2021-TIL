import UIKit

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

