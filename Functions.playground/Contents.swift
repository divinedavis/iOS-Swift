//: Playground - noun: a place where people can play

import UIKit

class Dog {
    func say(s : String, _ times : Int = 1) {
        for _ in 1...times {
            print(s)
        }
    }
}

let d = Dog()
d.say("Wofo", 99)

let f = Dog()
f.say("Hi")

func sayString(arrayOfStrings : String ...) {
    for s in arrayOfStrings {
        print(s)
    }
}

sayString("What", "Do", "You", "Mean")

func say(s : String, times : Int, var loudly : Bool) {

    loudly = true
    loudly = false
}









