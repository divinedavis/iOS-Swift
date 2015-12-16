//: Playground - noun: a place where people can play

import UIKit

class SampleClass {
    var sampleInt : Int
    init() {
        sampleInt = 0
        
    }
    
}
var sampleClass = SampleClass()
sampleClass.sampleInt

struct Point {
    var x : Double
    var y : Double
    
    init(xx : Double, yy : Double) {
        self.x = xx
        self.y = yy
    }
    
}

let point = Point(xx: 8.9, yy: 9.0)
point.x
point.y

enum GradesKTo5 : String {
    case Kindergarten = "K", First = "1st", Second = "2nd"
    case Third = "3rd", Fourth = "4th", Fifth = "5th"
    init() {
        self = .Kindergarten
    }
}

let k = GradesKTo5()
k.hashValue
k.rawValue

enum MelonType : String {
    case Watermelon = "Watermelon", Cantaloupe = "Cantaloupe", Honeydew = "Honeydew"
    init() {
        self = .Watermelon
    }
}

struct Melon {
    var melonType = MelonType()
    var seedCount : Int
    var weightInPounds : Double
    init() {
        melonType = MelonType()
        seedCount = 0
        weightInPounds = 0.0

    }
    init(melonType : MelonType, seedCount : Int, weightInPounds : Double) {
        self.melonType = melonType
        self.seedCount = seedCount
        self.weightInPounds = weightInPounds
    }
    
    func description() -> String {
    return "My \(melonType.rawValue) has \(seedCount) seeds and weighs \(weightInPounds) lbs."
    
    }

}

let defaultMelon = Melon()
let customMelon = Melon(melonType: .Honeydew, seedCount: 100, weightInPounds: 2.0)
defaultMelon.description()
customMelon.description()

struct MilesPerHour {
    var rate : Double
    init(_ rate : Double) {
        self.rate = rate
    }
}

let mph = MilesPerHour(60)

class Shape {
    var numberOfSides : Int
    init() {
        numberOfSides = 0
    }
    func description() -> String {
        return "I am a shape with no sides."
    }
}

class Rectangle: Shape {
    var length : Int
    var width : Int
    init(length : Int, width : Int) {
        self.length = length
        self.width = width
        super.init()
        numberOfSides = 4
    }
    override convenience init() {
        self.init(length : 0, width : 0)
        numberOfSides = 0
    }
    override func description() -> String {
        return "I am a rectangle with \(numberOfSides) sides, \(length)x\(width), area: \(length * width)"
    }
}

class Square: Rectangle {
    init(length : Int) {
        super.init(length : length, width : length)
    }
    convenience init() {
        self.init(length : 0)
        numberOfSides = 0
    }
    override func description() -> String {
        return "I'm a square with \(numberOfSides) sides, \(length)x\(length), area: \(length * length)"
    }
}

let square = Square()
square.description()
let square2 = Square(length: 5)
square2.description()

let rectangle = Rectangle()
rectangle.description()
let rectangle2 = Rectangle(length: 3, width: 4)
rectangle2.description()















