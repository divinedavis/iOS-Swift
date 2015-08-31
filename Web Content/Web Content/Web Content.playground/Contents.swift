//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var andtherStr = "Rob"

var thirdStr = str + andtherStr

for chars in str {
    println(chars)
}

var newString = "Test string" as NSString

var subString = newString.substringWithRange(NSRange(location: 2, length: 6))

if (newString.containsString("Test")) {
    
    println("THERE IS!")
    
}

newString.componentsSeparatedByString(" ")

newString.uppercaseString
newString.lowercaseString