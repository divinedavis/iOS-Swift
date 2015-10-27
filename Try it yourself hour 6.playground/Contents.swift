//: Playground - noun: a place where people can play

import UIKit
import Foundation

let randomNumber = arc4random() % 10

var result : String!

if randomNumber == 0 {
    
    result = "Zer is the first index in an array"
    
} else if randomNumber == 1 {
    
    result = "One is the loneliest number..."
    
} else {
    result = "Our random number is \(randomNumber)"
}

result
