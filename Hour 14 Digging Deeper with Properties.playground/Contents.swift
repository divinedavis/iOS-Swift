//: Playground - noun: a place where people can play

import UIKit
import Foundation

//class SomeClassWithExpensiveOperation  {
//    func doSomeHeavyLifting() -> [String : String] {
//        var aDictionary : [String : String] = [:] //lift heavy things and assign to aDictionary
//        aDictionary["Test key"] = "Test Value"
//        return aDictionary
//    }
//}
//    class SomeClassWithLazyVar {
//        lazy var dataFromNetwork : [String : String] = {
//            var aDictionary : [String : String] = [:] //lift heavy things and assign to aDictionary
//            aDictionary["Test key"] = "Test Value"
//            return aDictionary
//        }()
//    }
//let someClass = SomeClassWithLazyVar()
//someClass.dataFromNetwork

//let someClass = SomeClassWithLazyVar()
//someClass.dataFromNetwork.doSomeHeavyLifting()

//struct Square {
//    var length : Double
//    var area : Double {
//            return length * length
//    }
//}
//
//let square = Square(length: 8)
//square.area

//struct Square {
//    var length : Double
//    var area : Double {
//        get {
//            return length * length
//        }
//        set (newArea) {
//            length = sqrt(newArea)
//        }
//    }
//}

//var square = Square(length: 4)
//square.area
//square.area = 25
//square.length

//class Vehicle {
//    var speed : Int
//    var speedLimit : Int {
//        willSet {
//            print("Preparing to change speed to \(newValue) MPH")
//        }
//        didSet {
//            var changeSpeed : () -> () = (speed > speedLimit) ? slowdown : speedup
//            while speed != speedLimit {
//                changeSpeed()
//            }
//            print("Now I'm driving \(speed) MPH becuase the speed limit changed to \(speedLimit) MPH from \(oldValue) MPH")
//        }
//    }
//    init(speedLimit : Int, speed : Int) {
//        self.speedLimit = speedLimit
//        self.speed = speed
//        print("Speed limit is \(speedLimit) MPH, I'm driving: \(speed) MPH")
//    }
//    func speedup() {
//        print("Speeding up to \(++speed) MPH...")
//    }
//    func slowdown() {
//        print("Slowing down to \(--speed) MPH...")
//    }
//}
//
//let car = Vehicle(speedLimit: 65, speed: 65)
//car.speedLimit = 55
//car.speedLimit = 70
//
//class Shape {
//    var area = 0.0
//}
//
//class Square : Shape {
//    var length : Double
//    override var area : Double {
//        get {
//            return length * length
//        }
//        set {
//            length = sqrt(newValue)
//        }
//    }
//    init(length : Double) {
//        self.length = length
//    }
//}
//
//let shape = Shape()
//shape.area
//
//let square = Square.init(length: 10)
//square.area
//square.area = 49
//square.length
//




















