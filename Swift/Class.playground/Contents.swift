import UIKit

struct PersonStruct {
    var firstName:String
    var lastName:String
    
    init(firstName: String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName:String
    var lastName:String
    
    init(firstName: String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
     func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}


//학생인데 운동선수

//운동선수인데 축구선수
