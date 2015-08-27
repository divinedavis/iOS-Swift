//: Playground - noun: a place where people can play

import UIKit

class SimpleClass {
    var singleProperty : String = "A string"
}

let myInts = [123, 333, 444, 554, 555, 666]
let myStings = ["Red", "green", "blue"]
let myObjects = [SimpleClass(), SimpleClass(), SimpleClass()]

func displayArray<SomeType>(theArray: [SomeType]) -> SomeType {
    println("Printing the array:")
    for eachItem in theArray {
        print(eachItem)
        print("  :  ")
    }
    println()
    let finalElement : SomeType = theArray[theArray.count-1]
    return finalElement
}

var finalInt = displayArray(myInts)
++finalInt

displayArray(myInts)
displayArray(myStings)