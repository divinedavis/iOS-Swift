//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Person {
    //STORED properties
    var firstName : String
    var lastName : String
    
    //COMPUTED property
    var FullName : String {
        get {
            //return the computed property
            return firstName + " " + lastName
        }
        set {
            //splite "newValue in two pieces
            var nameArray = newValue.componentsSeparatedByCharactersInSet(" ")
            firstName = nameArray[0]
            lastName = nameArray[1]
        }
    }
    
    init(first : String, last : String) {
        self.firstName = first
        self.lastName = last
    }
}

var examplePerson = Person(first: "Jen", last: "Barber")
println(examplePerson.FullName)


