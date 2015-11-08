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

func addVariadicNumbers(numbers : Int...) {
    var result = 0
    for eachNum in numbers {
        result += eachNum
    }
    print("Sum total of numbers: \(result)")
}

addVariadicNumbers(1, 2, 3, 4, 8)












