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

var myList : [AnyObject] = [
    
    Person(firstName: "Divine", lastName: "Davis"),
    Person(firstName: "D'Andre", lastName: "Davis"),
    Person(firstName: "Dontae", lastName: "Davis"),
    Person(firstName: "Chamaine", lastName: "Carlo"),
    Person(firstName: "Dashaun ", lastName: "Davis")
]

for person in myList {
    let aPerson = person as! Person
    
    print("This is \(aPerson.firstName)" + " " + "\(aPerson.lastName)")
}

enum SomeEnum {
    case member1
    case member2
}

let veryRandomArray:[Any] = [
    
    45.34,
    2332.3343,
    3,
    Person(firstName: "Divine", lastName: "Davis"),
    SomeEnum.member1


]

for something in veryRandomArray {
    switch something{
    case let randomDouble as Double where randomDouble < 100:
        print("We found a smaller double \(randomDouble)")
    case let randomDouble as Double where randomDouble > 100:
        print("We found a larger double \(randomDouble)")
    case let randomInt as Int:
        print("We found an integer \(randomInt)")
    case let aPerson as Person:
        print("There are persons in here: \(aPerson.firstName)")
    case is String:
        print("Got a string")
    default:
        print("Can't be sure")
        
    }
}





















