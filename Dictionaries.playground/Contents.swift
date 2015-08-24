//: Playground - noun: a place where people can play

import UIKit

var states = ["AZ" : "Arizona", "CA" : "California", "DE" : "Delaware", "KY" : "Kentucky"]

//declare dictionary of int keys and string values
var products : [Int:String]

//Accessing dictionary values
println(states["AZ"])
//updating or inserting
states["FL"] = "Florida" //will change OR insert

states.updateValue("Nevada", forKey: "NV")
states["NV"]


states.updateValue("Arizona is the worst", forKey: "AZ")
states
println("Print \(states)")

//to delete key/value pair
states["DE"] = nil
states.removeValueForKey("CA")

println("There are \(states.count)")

//i can change whatever is in the parameters
for (key, value) in states {
    println("\(key) is short for \(value)")
}

