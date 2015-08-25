//: Playground - noun: a place where people can play

import UIKit

enum SeatPreference {
    case Window 
    case Middle
    case Aisle
    case NoPreference
    case Back, Front
}

var jenPrefers : SeatPreference
jenPrefers = .Aisle

var royPrefers = SeatPreference.Window

switch royPrefers {
case .Window:
    println("He preferes the WINDOW seat")
case .Middle:
    println("He like the MIDDLE seat")
}


