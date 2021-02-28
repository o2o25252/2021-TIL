import UIKit

struct Lecture {
    let name: String
    let instructor : String
    let numOfStudent : Int
}

func printLectureName(from instrutor: String, lectures: [Lecture]) {
    
    let lectureName = lectures.first{ (lec) -> Bool in return lec.instructor == instrutor}?.name ?? "없습니다."
    
    print("그 강사님 강의는요: \(lectureName)")
}
// lec 는 돌고있는 현재 Lecture 이다 그래서 입력된강의와 현 lec 의 강의 와 비교해서 같을때 lec.name 을 출력
let lec1 = Lecture(name: "IOS Basic", instructor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "IOS Advanced", instructor: "Jack", numOfStudent: 5)
let lec3 = Lecture(name: "IOS Pro", instructor: "Nick", numOfStudent: 5)
let lectures = [lec1,lec2,lec3]

printLectureName(from: "no", lectures: lectures)

