//: Playground - noun: a place where people can play

import UIKit

let daysInMonth = [31, 28, 31, 34, 34, 34, 32, 33, 33, 33, 33]

var colorOption = ["Red", "Green", "Black"]

var flavors : [String]

flavors = ["Vanilla", "Strawberry", "Chocolate"]

print("The first flavor is \(flavors[0])")

flavors[0]

//adding to the end of an array
flavors.append("Neapolitan")
flavors += ["Wintergreen"]

//insert at specific position
flavors.insert("Super", atIndex: 2)
flavors

//removing items
flavors.removeLast()
flavors.removeAtIndex(3)

//.count for number of items
//println("The array has \(daysInMonth.count)")
//
//if daysInMonth.isEmpty {
//    println("Theres nothing in the array")
//}
//
//for month in daysInMonth {
//    println(month)
//}
//

