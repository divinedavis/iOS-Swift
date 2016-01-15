//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Square {
    static let numberOfSides = 4
    var length : Int
    var area : Int {
        return Square.numberOfSides * length
    }
}

let sides = Square.numberOfSides
sides
let square = Square.init(length: 4)
square.area

class AClass {
    class func aClassMethod() {
        print("I am a class method")
    }
    class func bClassMethod() {
        aClassMethod()
    }
    func anInstanceMethod() {
        print("anInstanceMethod. Calling bClassMethod().")
        AClass.bClassMethod()
    }
}

AClass.aClassMethod()
let aClass = AClass()
aClass.anInstanceMethod()

struct Counter {
    static var count = 0
    static func increaseCountByOne() {
        ++count
    }
}

Counter.count
Counter.increaseCountByOne()
Counter.count

struct Volume {
    static let minVolume = 0
    static let maxVolume = 25
    
    var volume : Int = 0 {
        didSet {
            if volume > Volume.maxVolume || volume < Volume.minVolume {
                volume > oldValue
            }
        }
    }
    mutating func turnItUp() {
        ++volume
    }
    mutating func turnItDown() {
        --volume
    }
}

var volume = Volume()
volume.volume = 1
volume.turnItUp()
volume.volume



























