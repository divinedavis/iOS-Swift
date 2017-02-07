//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var firstName : String
    var lastName : String
    
    init(firstName:String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func allAboutPerson() -> String {
        return "This person has a name \(firstName)" + "\(lastName)"
    }
}

var me = Person(firstName: "Divine", lastName: "Davis")
me.allAboutPerson()
me.firstName
me.lastName

var description = Person(firstName: "Divine", lastName: "Davis")
description.allAboutPerson()
description.firstName

class Student : Person {
    
    var studentNumber : Int = 0
    
    init(number:Int, firstName:String, lastName:String) {
        self.studentNumber = number
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func allAboutPerson() -> String {
        return "This student has a name \(firstName)" + "\(lastName)" + " \(studentNumber)"
    }
    
}

var myStudent = Student(number: 434, firstName: "Divine", lastName: "Davis")
myStudent.allAboutPerson()




