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

func mean2(numbers :[Int]) -> Double {
    var sum = 0
    func meanCombine(num1 : Int, num2 : Int) -> Int {
        return num1 + num2
    }
    sum = numbers.reduce(0, combine: meanCombine)
    return Double(sum)/Double(numbers.count)
}

mean2([5,6,7])

func mean3(numbers : [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { (num1 : Int, num2 : Int) -> Int in
        return num1 + num2 })
    return Double(sum)/Double(numbers.count)
}
mean3([2,3,4,5,6,7])

func mean4(numbers : [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { num1, num2 in
        return num1 + num2 })
    return Double(sum)/Double(numbers.count)
}
mean4([1,2,3,4])

func mean5(numbers : [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { num1, num2 in num1 + num2 })
    return Double(sum)/Double(numbers.count)
}
mean5([7,7,11])

func mean6(numbers : [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { $0 + $1 })
    return Double(sum)/Double(numbers.count)
}
mean6([2,3,4,5])

func mean7(numbers : [Int]) -> Double {
    let sum = numbers.reduce(0) { $0 + $1 }
    return Double(sum)/Double(numbers.count)
}

func mean8(numbers : [Int]) -> Double {
    return Double(numbers.reduce(0) {$0 + $1})/Double(numbers.count)
}

let a = [2, 4, 5, 4, 8, 0]
let b = a.sort(<)

func median(numbers : [Int]) -> Int {
    return numbers.sort(<) [numbers.count / 2]
}

















