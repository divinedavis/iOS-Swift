//: Playground - noun: a place where people can play

import UIKit

//array of sorted integer
var numberList = [8, 2, 10, 9, 11, 7, 3, 4]

func insertionSort(var numberList: [Int]) -> [Int] {
    
    var y, key : Int
    
    for x in 0..<numberList.count {
        
        //obtain a key to be evaluated 
        key = numberList[x]
        
        //iterate backwards through the sorted portion
        for (y = x; y > -1; y--) {
            
            if (key < numberList[y]) {
                
                //remove item from original position
                numberList.removeAtIndex(y + 1)
                
                //insert the number at the key position
                numberList.insert(key, atIndex: y)
            }
        }
    }
    return numberList
}
