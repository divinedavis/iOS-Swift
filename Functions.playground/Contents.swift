//: Playground - noun: a place where people can play

import UIKit

func sum(x : Int, y : Int) -> Int {
    
    let result = x + y
    
    return result
}

sum(8, y: 0)

func say1(s : String) -> Void {
    print(s)
}

say1("What's up?")

func say2(s : String) -> () {
    print(s)
}

func say3(s : String) {
    print(s)
}

let pointless : Void = say1("Howdi")

func greet1(_ :Void) -> String {return "Howdy"}
func greet2() -> () {print("Howdy")}
func greet3() {print("What's up")}

func repeatString(s : String, times n : Int) -> String {
    var result = ""
    for _ in 1...n { result += s}
    return result
}

let s = repeatString("whats up?", times: 3)

let l = "hello"
let l2 = l.stringByReplacingOccurrencesOfString("ell", withString: "hooooo")
l2

class Dog {
    func say(s : String, _ times : Int) {
        for _ in 1...times {
            print(s)
        }
    }
}

let d = Dog()
d.say("woof", 3)

func say(what : String) {
    
}

func say(what : Int) {
    
}

say(8)
say("Hahhhhh")

















