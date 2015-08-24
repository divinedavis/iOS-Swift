//: Playground - noun: a place where people can play

import UIKit

var temperature : Int?

//connect to the internet, get current temperature...

temperature = 88

if temperature != nil {
    //forced unwrapping
    println("The temperature is \(temperature!) degrees")
}

