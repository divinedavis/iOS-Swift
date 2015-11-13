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

let sum = addVariadicNumbers(2,4)
sum
addVariadicNumbers(1, 2, 3, 4, 8)
addVariadicNumbers(sum + 1,2,3,4)

func meanMedianMode(numbers : Int...) -> (mean : Double, median : Int, mode : Int) {
    
    //FIND MEAN
    
    //sum for the total of the elements
    var sum = 0.0
    //loop through the variadic parameter
    for number in numbers {
        //adds the numbers looped to the sum
        sum += Double(number)
    }
    //mean is the sum divided by the number of elements in the variadic parameter
    let mean = sum / Double(numbers.count)
    
    //FIND MEDIAN
    
    
    let sortedNumbers = numbers.sort({ num1, num2 in return num1 < num2})
    let midIndex = numbers.count / 2
    let median = sortedNumbers[midIndex]
    
    //find mode
    var occurrences : [Int : Int] = [:]
    
    for number in numbers {
        if var value = occurrences[number] {
            occurrences[number] = ++value
        } else {
            occurrences[number] = 1
        }
    }
    
    var highestPair : (key : Int, value : Int) = (0,0)
    for (key, value) in occurrences {
        highestPair = (value > highestPair.value) ? (key, value) : highestPair
    }
    
    let mode = highestPair.key
    
    //return tuple of results
    return (mean, median, mode)
    
}

let mmm = meanMedianMode(1,2,6,7,7)

mmm.mean
mmm.mode
mmm.mean












