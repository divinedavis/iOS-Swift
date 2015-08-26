//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Person {
    //STORED properties
    var firstName : String
    var lastName : String
    
    //COMPUTED property
    var FullName : String {
        
            //return the computed property
            return firstName + " " + lastName
        }
        
    
    init(first : String, last : String) {
        self.firstName = first
        self.lastName = last
    }
}

var examplePerson = Person(first: "Jen", last: "Barber")
println(examplePerson.FullName)


