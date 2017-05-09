//: Playground - noun: a place where people can play

import UIKit

struct GenericStruct<T> {
    var property : T?
}

let explicitStruct = GenericStruct<Bool>()
//T is Bool

let implicitStruct = GenericStruct(property: "Divine")
//T is String

//Every type must be defined

protocol NormalProtocol {
    var property : String { get set }
}

class NormalClass : NormalProtocol {
    var property: String = "Bob"
}

protocol GenericProtocol {
    associatedtype myType
    var anyProperty : myType { get set }
}

class MyClass : GenericProtocol {
    var anyProperty = "Divine"
}

struct SomeStruct : GenericProtocol {
    var anyProperty = 1996
}

extension GenericProtocol {
    static func introduce() {
        print("I'm Divine")
    }
}

extension GenericProtocol where myType == String {
    func introduce() {
        print("I'm Divine")
    }
}

let someClassInstance = MyClass().introduce()
let someStructInstance = SomeStruct()









