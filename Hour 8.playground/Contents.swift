//: Playground - noun: a place where people can play

import UIKit

func printHelloWorld() {
    print("Hello, world")
}

printHelloWorld()

func printHelloTimes(times : Int) {
    for _ in 1...times {
        print("Hello to you!")
    }
}

printHelloTimes(5)

func printWord(word : String, numberOfTimes : Int) {
    for _ in 1...numberOfTimes {
        print("Hello \(word)")
    }
}

printWord("world", numberOfTimes: 8)

func addVariadicNumbers(numbers : Int...) -> Int {
    var results = 0
    for eachNum in numbers {
        results += eachNum
    }
    return results
}

let sum = addVariadicNumbers(2)
addVariadicNumbers(1, 2, 3, 4, 8)

func meanMedianMode(numbers : Int...) -> (mean : Double, median : Int, mode : Int) {
    var sum = 0.0
    for number in numbers {
        sum += Double(number)
    }
    let mean = sum / Double(numbers.count)
}












