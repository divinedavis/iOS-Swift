//: Playground - noun: a place where people can play

import UIKit

let numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func linearSearch(key : Int) {
    for number in numberList {
        if number == key {
            print("value at \(key) is found")
        }
    }
}

linearSearch(4)