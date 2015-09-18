//: Playground - noun: a place where people can play

import UIKit

func bubbleSort(var numberList: Array<Int>) ->Array<Int> {
    
    var z, passes, key: Int
    
    //track iterations
    for x in 0..<numberList.count {
        
        passes = (numberList.count - 1) - x
        
        for y in 0..<passes {
            key = numberList[y]
            
            print("comparing \(key) and \(numberList[y + 1])")
            
            //compare and rank
            if (key > numberList[y + 1]) {
                
                z = numberList[y + 1]
                numberList[y + 1] = key
                numberList[y] = z
            }
        }
        
    }
    
    return numberList
    
}