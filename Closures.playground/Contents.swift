//: Playground - noun: a place where people can play

import UIKit

// function that accepts a closure 
func performFiveTimes(myClosureParameter : () -> () ){
    for i in 1...5 {
    myClosureParameter()
    }
}

performFiveTimes({ ()->() in
    println("This is a simple function")
    
})

//"Sorted" is a built-in function in Swift
//sorted (array_to_sort, closure_to_compare)

let unsortedArray = [43,34,333,33,33,4,3,223,445,3,2,2]



let sortedArray = sorted(unsortedArray, {(first : Int, second : Int) -> Bool in
    return first < second
} )

sortedArray
