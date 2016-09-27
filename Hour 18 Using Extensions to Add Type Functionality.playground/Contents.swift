//: Playground - noun: a place where people can play

import UIKit
import Foundation

typealias MPH = Double
extension MPH {
    var kmPerHour : Double { return self * 1.60994 }
    var milesPerMinute : Double { return self / 60.0 }
}

let speed : MPH = 60
let kmH = speed.kmPerHour
let mpM = speed.milesPerMinute

extension Int {
    func repeats(closure : () -> ()) {
        for _ in 1...self {
            closure()
        }
    }
}

3.repeats{print("I'm being printed!")}

struct Player {
    var score = 0
    mutating func increaseScore() {
        ++score
    }
    mutating func decreaseScore() {
        --score
    }
}

var player = Player()

5.repeats{ player.increaseScore() }
player.score

struct Circle {
    var radius = 0.0
    var circumference : Double {
        return 2 * radius * M_PI
    }
}

extension Circle {
    init(circumference : Double) {
        let radius = circumference / (2 * M_PI)
        self.init(radius : radius)
    }
}

let circle = Circle(circumference: 31.42)
circle.radius

class Person {
    var fullName : String
    init(fullName : String) {
        self.fullName = fullName
    }
    
}

extension Person {
    convenience init(firstName : String, lastName : String) {
        let fullName = firstName + " " + lastName
        self.init(fullName : fullName)
    }
}

let person = Person(firstName: "George", lastName: "Washington")
person.fullName

enum Transformers : String {
    case OptimusPrime = "Optimus Prime"
    case Bumblebee = "Bumblebee"
    case Ratchet = "Ratchet"
    case Megatron = "Megatron"
    case Starscream = "Starscream"
}

extension Transformers {
    enum TransformersType {
        case Autobot, Decepticon
    }
    
    var type : TransformersType {
        switch self {
        case .OptimusPrime, .Bumblebee, .Ratchet:
            return .Autobot
        default:
            return .Decepticon
        }
    }
}

let transformer = Transformers.Bumblebee
switch transformer.type {
case .Autobot:
    print("\(transformer.rawValue) is an Autobot.")
case .Decepticon:
    print("\(transformer.rawValue) is a Decepticon.")
}

protocol Squarable {
    func square() -> Int
}

extension Int : Squarable {
    func square() -> Int {
        return self * self
    }
}

5.square()




























