import UIKit

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
