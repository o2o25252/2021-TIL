import UIKit

struct
Lecture{
    var title:String
    var maxStudent: Int = 30
    var numOfRegistered:Int = 0
    
    // 메서드
    func remainSeats() -> Int {
        let remainSeats = maxStudent - numOfRegistered
        return remainSeats
    }
    
    //  Struct 관련 메서드를 썻는데 그 메서드가 스트럭트에 프로퍼티를 변경 시키면
    // mutating 키워드 을 써주어야 한다.
    mutating func register(){
        //등록된 학생수 증가시키기
        numOfRegistered += 1
    }
    //타입 프로퍼티
    static let target: String = "Anybody !"
    //타입 메서드
    static func 소속() -> String {
        return "무직"
    }
}

var lec = Lecture(title: "IOS Basic")



lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.register()
lec.register()

lec.remainSeats()


Lecture.target
Lecture.소속()

struct Math {
    static func abs(value: Int) -> Int{
        if value > 0 {
            return value
        }else {
            return -value
        }
    }
}

// 메서드 추가 extension

extension Math {
    static func squre(value: Int) -> Int{
        
        return value * value
    }
    static func half(value: Int) -> Int{
        return value/2
    }
}


Math.squre(value: 5)
Math.half(value: 20)
