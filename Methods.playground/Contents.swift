//: Playground - noun: a place where people can play

import UIKit

func goodMorning() {
    print("Good Morning")
}

goodMorning()

func hoodMorning(name : String) {
    
    print("Hood morning \(name)")
}

hoodMorning("Divine")

func loodMorning(name : String = "FIRST NAME", numb : Int = 0, last : String = "LAST NAME") {
    print("Your first name is \(name) and your age is \(numb), your last name is \(last)")
}

loodMorning("Divine", numb: 23, last: "Davis")
loodMorning(numb: 33)
loodMorning()

func sum (a : Int, b : Int) -> Int {
    return a * b
}

sum(8, b: 5)

