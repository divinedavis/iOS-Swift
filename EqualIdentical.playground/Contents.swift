//: Playground - noun: a place where people can play

import UIKit

var dateA = NSDateComponents()
dateA.year = 2000
dateA.month = 01
dateA.day = 01

var dateB = NSDateComponents()
dateB.year = 2000
dateB.month = 01
dateB.day = 01

//check EQUALITY: == 
if dateA == dateB {
    println("Yes, dateA and dateB are equal to each other")
}

//check IDENTITY: ===
if dateA === dateB {
    println("They are equal")
} else {
    println("The might be equal but they are not identical")
}

