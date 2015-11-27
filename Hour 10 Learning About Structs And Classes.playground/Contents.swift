//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Point {
    var x : Double
    var y : Double
    
    func distanceTo(point point : Point) -> Double {
        let a = abs(self.x - point.x)
        let b = abs(self.y - point.y)
        let c = sqrt(a * a + b * b)
        return c
    }
    
//    func halfDistanceTo(point point : Point) -> Double {
//        return distanceTo(Point) / 2.0
//    }
}

let pointA = Point(x: 1.0, y: 2.0)
let pointB = Point(x: 4.0, y: 6.0)
let distance = pointA.distanceTo(point : pointB)
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





























