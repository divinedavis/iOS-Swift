//: Playground - noun: a place where people can play

import UIKit

// Learning about nested functions

func performMathAverage(mathFunc : String) -> ([Int]) -> Double {
    
    var sum = 0.0
    
    func mean(numbers : [Int]) -> Double {
        for number in numbers {
            sum += Double(number)
        }
        return sum / Double(numbers.count)
    }
    
    func median(numbers : [Int]) -> Double {
        
        let sortedNumbers = numbers.sort({
            (num1 : Int, num2 : Int) -> Bool in return num1 < num2
        })
        
        let midIndex = numbers.count / 2
        let median = Double(sortedNumbers[midIndex])
        return median
    }
    
    func mode(numbers : [Int]) -> Double {

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
        return Double(highestPair.value)
    }
    
    switch mathFunc {
        case "mean":
        return mean
        case "median":
        return median
        default:
        return mode
        
    }
    
}

var mathFunc = performMathAverage("mean")
mathFunc([12,33,3333,44,3,333])
mathFunc = performMathAverage("mode")
mathFunc([223,332,3433,2,2,222,22])
mathFunc = performMathAverage("median")
mathFunc([223232,32,32332,32,3232,3232323])

// TRY IT YOURSELF PG. 123

func square(num : Int) -> Int {
    return num * num
}

func mapEachElement(inArray arr : [Int], withFunc aFunc : (Int) -> Int) -> [Int] {
    var returnArray = [Int]()
    for num in arr {
        returnArray.append(aFunc(num))
    }
    return returnArray
}

let firstArray = [1,2,3,4,5]
let squareArray = mapEachElement(inArray: firstArray, withFunc: square)

func mean2(numbers : [Int]) -> Double {
    sum = numbers.reduce(<#T##initial: T##T#>, combine: <#T##(T, Int) throws -> T#>)
}






