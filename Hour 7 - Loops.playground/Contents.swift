//: Playground - noun: a place where people can play

import UIKit
import Foundation

var count = 0

while count < 10 {
    "Hi, Stinky Butt"
    ++count
}

repeat {
    "Hi, Stinky Butt"
    ++count
} while count < 22

var timesRolled = 0
var rolledOne : Int
var rolledTwo : Int

repeat {
    rolledOne = Int(arc4random_uniform(6) + 1)
    rolledTwo = Int(arc4random_uniform(6) + 1)
    
    ++timesRolled
    "The numbers of the dice are \(rolledOne) & \(rolledTwo)"
} while rolledTwo != rolledOne

"The number of times the dice was rolled is \(timesRolled) times"














