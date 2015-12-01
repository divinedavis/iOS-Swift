//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Point {
    var x : Double
    var y : Double
    
//    func distanceTo(point point : Point) -> Double {
//        let a = abs(self.x - point.x)
//        let b = abs(self.y - point.y)
//        let c = sqrt(a * a + b * b)
//        return c
//    }
    mutating func moveToZero() {
        self.x = 0.0
        self.y = 0.0
    }
    
//    func halfDistanceTo(point point : Point) -> Double {
//        return distanceTo(Point) / 2.0
//    }
}

let pointA = Point(x: 1.0, y: 2.0)
let pointB = Point(x: 4.0, y: 6.0)
//let distance = pointA.distanceTo(point : pointB)
//let halfDistance = pointA.halfDistanceTo(point: pointB)

class Circle {
    var radius = 0.0
    
    func diameter() -> Double {
        return 2 * radius
    }
    
    func area() -> Double {
        return M_PI * radius * radius
    }
}

let circle = Circle()

circle.radius = 5.0

"Circle diameter: \(circle.diameter()), area: \(circle.area())"

var newPoint = Point(x: 4.0, y: 3.0)
var newPointCopy = newPoint
newPointCopy.y = 17.4
newPoint
newPointCopy

var newCircle = Circle()
circle.radius = 3.0
var newCircleCopy = newCircle
newCircleCopy.radius = 7.5
newCircle
newCircleCopy


var point = Point(x: 3.5, y: 6.0)

let circleOne = Circle()
circleOne.radius = 5.0

let circleTwo = Circle()
circleTwo.radius = 5.0

let circleThree = circleOne

if circleOne === circleTwo {
    "circleOne is identical to circleTwo"
} else {
    "circleOne is not identical to circleTwo"
}

if circleOne !== circleThree {
    "circleOne is not identical to circleThree"
} else {
    "circleOne is identical to circleThree"
}

struct PersonStruct {
    var firstName : String
    var lastName : String
    var age : Int
    
}

PersonStruct(firstName: "Divine", lastName: "Davis", age: 23)

var newPerson = PersonStruct(firstName: "Divine", lastName: "Davis", age: 23)
newPerson.lastName = "Carlo"

"\(newPerson.lastName)"

class PersonClass {
    
    var firstName : String = ""
    var lastName : String = ""
    var age : Int = 0
}

var newPersonClass = PersonClass()

newPersonClass.lastName = "Carlo"


























