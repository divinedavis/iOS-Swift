//: Playground - noun: a place where people can play

import UIKit

enum GradesKto5 : String {
    case Kindergarden = "K", First = "1st"
    case Second = "2nd", Third = "3rd"
    case Fourth = "4th", Fifth = "5th"
    
}

var myKid = GradesKto5.Kindergarden
myKid.rawValue

enum PhoneNumber {
    case TollFree(areaCode : Int, exchange : Int, ext : Int)
    case InternalExtension(Int)
}

let customerService = PhoneNumber.TollFree(areaCode: 803, exchange: 333, ext: 3434)



























