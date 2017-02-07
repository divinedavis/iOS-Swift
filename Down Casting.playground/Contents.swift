//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



class Person{
    
    var firstName : String
    var lastName : String
    
    init(firstName:String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func allAboutPerson() -> String {
        return "This person has a name \(firstName)" + " \(lastName)"
    }
}

class Student : Person{
    
    var studentNumber : Int
    
    init(number:Int, firstName:String, lastName:String) {
        self.studentNumber = number
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func allAboutPerson() -> String {
        let personInfo = super.allAboutPerson() + ". "
        
        let studentInfo = "This student has a number \(studentNumber)"
        return personInfo + studentInfo
    }
}

class TeachingAssistant : Student{
    
    var subject : String
    var employeeNumber : Int
    
    init(subject:String, employeeNumber:Int, studentNumber:Int, firstName:String, lastName:String) {
        self.subject = subject
        self.employeeNumber = employeeNumber
        
        super.init(number: studentNumber, firstName: firstName, lastName: lastName)
    }
}

let LabSignInList = [
    
    Student(number: 1111, firstName: "Divine", lastName: "Davis"),
    Student(number: 2222, firstName: "Manny", lastName: "Matos"),
    Student(number: 1111, firstName: "Divine", lastName: "Davis"),
    Student(number: 2222, firstName: "Manny", lastName: "Matos"),
    TeachingAssistant(subject: "Digital Systems", employeeNumber: 43343, studentNumber: 1234, firstName: "Emily", lastName: "Koch"),
    Person(firstName: "Walter", lastName: "Peters")
    
]

let randomStudent : Student = (LabSignInList[2] as? Student)!













