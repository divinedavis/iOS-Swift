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

//var result = 0
//
//for var count = 0; count <= 10; ++count {
//    result += count
//}

//print(result)

let daysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
for var i = 0; i < daysOfTheWeek.count; ++i {
    print(daysOfTheWeek)
}

var items = ["Hi", " how", " are", " you", " doing?"]
for item in items {
    print(item)
}

for counting in -2...2 {
    print(counting)
}

let myWord = "Supercalifragilisticexpialidocious"
var numberOfEsFound = 0
for eachWord in myWord.characters {
    if eachWord == "e" {
        ++numberOfEsFound
    }
}
print(numberOfEsFound)

let bears = ["Panda bear", "Mama bear", "Baby bear"]

for bear in bears {
    switch bear {
        case "Panda bear":
        print("This is a panda bear")
        case "Mama bear":
        print("This is moma bear")
        case "Baby bear":
        print("This is a baby bear")
    default:
        print("Non")
    }
}

let retinaiPhonesAndYears = ["iPhone 4": 2010, "iPhone 4S": 2011, "iPhone 5": 2012, "iPhone 5S": 2013, "iPhone 6": 2014, "iPhone 6S": 2015]

for (iPhone, year) in retinaiPhonesAndYears {
    print("The \(iPhone) was released \(year)")

}

let beatles = ["Paul", "John", "Ringo", "George"]
var ringoIndex = 0
for (index, name) in beatles.enumerate() {
    if name == "Ringo" {
        ringoIndex = index
    }
}
print("Ringo is at index \(ringoIndex) in the beatles array.")

var results = [Int]()

for count in 1...100 {
    let remainder = count % 7
    switch remainder {
    case 1...6:
        continue
    default:
        results.append(count)
    }
    print("\(count) is divisible by 7")
}

let words = "Supercalifragilisticexpialidocious"
for eachChar in words.characters {
    switch eachChar {
        case "x":
        print("\(words) contains an 'x'")
        break
    default:
        continue
    }
}

for var count = 20; count <= 100; count += 20 {
    print("first count is \(count)")
}

for count in 1...5 {
    switch count {
    case 4:
        print("hi")
        continue
    default:
        print("non")
    }
}












