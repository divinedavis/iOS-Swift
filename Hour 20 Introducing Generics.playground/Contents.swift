//: Playground - noun: a place where people can play

import UIKit

func printWeather<T>(value : T) {
    print("Today is a \(value) day")
}

let val1 = "beautiful"
let val2 = "sunny"

printWeather(val1)

func areIntsEqual(first : Int, second : Int) -> Bool {
    return first == second
}

func areStringsEqual(first : String, second : String) -> Bool {
    return first == second
}

func areTheseEqual<T : Equatable>(first : T, second : T) -> Bool {
    return first == second
}

areTheseEqual("hi", second: "hi")

func unique<T: Hashable>(array : [T] -> [T]) {
    var results = [T : Int]()
    array.map { results[$0] = 1 }
    
}























