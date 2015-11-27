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
}



let pointA = Point(x: 1.0, y: 2.0)
let pointB = Point(x: 4.0, y: 6.0)
let distance = pointA.distanceTo(point : pointB)
























