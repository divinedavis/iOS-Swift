//: Playground - noun: a place where people can play

import UIKit

print("hello ")
print("world")

//or

print("Hello "); print("World")

class Dog {
    func bark() {
        print("WOOF")
    }
}

let dog = Dog()

dog.bark()

let sum = 1 + 2

extension Int {
    func sayHello() {
        print("Hell, i'm \(self)")
    }
}

1.sayHello()

var one = 1
let two = 2

func go() {
    let one = 1
    var two = 2
    two = one
}

func doGo() {
    go()
}

doGo()













