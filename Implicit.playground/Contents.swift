//: Playground - noun: a place where people can play

import UIKit

var implicitInt = Int!()

var optionalInt : Int!
var myDictionary = ["life" : 32]

optionalInt = myDictionary.updateValue(42, forKey: "life")

print(optionalInt)
