//: Playground - noun: a place where people can play

import UIKit

var optionalString : String? = "I am a string"

if let unwrappedString = optionalString {
    
    print("unwrapped string is \(unwrappedString)")
    
} else {
    
    print("optional string is nil")
    
}

var implicitInt : Int!


