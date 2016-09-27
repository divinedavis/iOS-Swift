//: Playground - noun: a place where people can play

import UIKit

func mean(numbers : [Int]) -> Double {
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
    return mean
}



func median(numbers : [Int]) -> Double {
    //FIND MEDIAN
    
    
    let sortedNumbers = numbers.sort({ num1, num2 in return num1 < num2})
    let midIndex = numbers.count / 2
    let median = Double(sortedNumbers[midIndex])
    return median
    
}

//find mode
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
    
    return Double(highestPair.key)
    
}

func performMathAvecrage(mathFunc :String) -> ([Int]) -> Double {
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
mathFunc([1,2,3,4,5,6,7,8])
mathFunc = performMathAverage("median")
mathFunc([2,3,4,5,6,7,7,5,5,4])
mathFunc = performMathAverage("mode or not mode")
mathFunc([2,3,4,5,6,5])
