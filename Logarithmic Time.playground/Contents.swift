//: Playground - noun: a place where people can play

import UIKit

var numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9]
func binarySearch(key : Int, _ imin : Int, _ imax : Int) {
    
    var midIndex : Double = round(Double((imin + imax) / 2))
    var midNumber = numberList[Int(midIndex)]
    
    //reduce the range
    
    if midNumber > key {
        binarySearch(key, imin, Int(midIndex) - 1)
    }
    
    //increase the range
    else if (midNumber < key) {
        binarySearch(key, Int(midIndex) + 1, imax)
    }
    else {
        print("value \(key) found")
    }
}



