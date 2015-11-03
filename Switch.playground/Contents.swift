//: Playground - noun: a place where people can play

import UIKit
import Foundation

let randomNumber = arc4random() % 10

var result : String!

switch randomNumber{
case 0:
    result = "This is zero"
case 1:
    result = "This is one"
case 2:
    result = "This is two"
default:
    result = "this is the default"
}

let farmAnimal = "chicken"

switch farmAnimal {
case "Cow", "Pig", "Goat":
    print("you picked one of these!")
case "chicken", "rooster":
    print("You picked dis!")
default:
    print("hi")
}

let examScore = arc4random() % 101

var grade : String!

switch examScore {
case 90...100:
    grade = "A"
case 80..<90:
    grade = "B"
case 70..<80:
    grade = "C"
case 60..<70:
    grade = "D"
default:
    grade = "F"
}

"student recieved an \(grade)"

let carInventory = ("Ford", 10)

switch carInventory {
case (_, 50...100):
    "We have too many \(carInventory.0) cars. Sell! Sell! Sell!"
case (let make, 0...20):
    "We are low on \(make). Buy more inventory"
case ("Ford", let num):
    "We have \(num) Fords in stock."
default:
    "Unrecognized make"
}

let wordTuple = ("car", 2)

switch wordTuple {
case let (word, amount) where amount == 1:
    "You have \(amount) \(word)."
case let (word, amount) where amount == 0:
    "You have no \(word)s."
case let (word, amount):
    "You have \(amount) \(word)s."
}

let someValue = 0
switch someValue {
case 0:
    "someValue is 0."
    break
default:
    break
}

let anotherValue = 4

switch anotherValue {
case 0..<20:
    "\(anotherValue) is between 0 and 19"
    fallthrough
case 10..<20:
    "\(anotherValue) is between 10 and 19"
default:
    "default branch"
}

let x = 8
switch x {
case 1...4:
    "I am below 4"
case 5...7:
    "I am in between 5 and 7"
default:
    "Huh?"
}






















