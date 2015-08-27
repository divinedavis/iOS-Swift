//: Playground - noun: a place where people can play

import UIKit

protocol ExampleProtocol {
    //method signatures 
    func simpleMethod() -> Bool
    //properties 
    var simpleProperty : Int { get }
    
}

class MyClass : ExampleProtocol {
    func simpleMethod() -> Bool {
        // do some work...
        return true
    }
    var simpleProperty : Int {
        return 33
    }
}

var person = MyClass()
person.simpleProperty
person.simpleMethod()
