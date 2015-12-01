//: Playground - noun: a place where people can play

import UIKit

//class MusicalInstrument {
//    
//    func makeSound() -> String {
//        return "I do not make a sound yet"
//    }
//    
//    
//}
//
//class Percussion: MusicalInstrument {
//    
//}
//
//class WindInstrument: MusicalInstrument {
//    
//    override func makeSound() -> String {
//        return "I use a mouthpiece and make a beautiful sound"
//    }
//    
//}
//
//class StringedInstrument: MusicalInstrument {
//    
//}
//
//var clarinet = WindInstrument()
//
//clarinet.makeSound()
//
class Shape {
    var title = "shape"
    func area() -> Double {
        return 0.0
    }
    func description() -> String {
        return "I am a \(title). My area is \(area())"
    }
}

class Circle : Shape {
    var radius = 0.0
    override func area() -> Double {
        return M_PI * radius * radius
    }
}

class Sphere: Circle {
    override func description() -> String {
        return super.description() + ". My volume is \(volume())"
    }
    func volume() -> Double {
        return (4.0 * super.area() * radius) / 3.0
    }
}
//
//let sphere = Sphere()
//sphere.title = "SPHERE"
//sphere.radius = 2.0
//sphere.area()
//sphere.volume()
//sphere.description()

//var shape = Shape()
//var square = Square()
//
//shape.area()
//shape.description()
//
//square.area()
//square.description()
//
//square.sideLength = 4
//square.title = "SQUARE"
//
//"\(square.sideLength) \(square.title)"






















