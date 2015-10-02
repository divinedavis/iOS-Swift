//: Playground - noun: a place where people can play

import UIKit




func silly(book : Bool) -> Bool {
    if true {
        class Cat {}
        var one = 1
        one = one + 1
        
        return book
    }
}

silly(true)

var one = 1

func changeOne() {
    let two = 2
    func sayTwo() {
        print(two)
    }
    class Klass {}
    struct Struct {}
    enum Enum {}
    one = two
}

class Manny {
    let name = "manny"
    func sayName() {
        print(name)
    }
    class  Klass {}
    struct Struct {}
    enum Enum {}
}

struct Moe{
    let name = "moe"
    func SayName() {
        print(name)
    }
    class Klass {}
    struct Struct {}
    enum Enum {}
}

enum Jack {
    var name : String {
        return "jack"
    }
    func sayName() {
        print(name)
    }
    class Klass {}
    struct Struct {}
    enum Enum {}
}

class Dog {
    private var name = ""
    private var whatADogSays = "woof"
    func bark() {
        print(whatADogSays)
    }
    func speak() {
        print(whatADogSays)
    }
}
Dog()

var dog = Dog()
print(dog.name)

var dog2 = Dog()


print(dog2.name)
print(dog2.whatADogSays)





















