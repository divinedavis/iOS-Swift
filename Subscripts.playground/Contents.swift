//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Subscripts

struct PowerCalculator {
    
    let base : Double
    
    subscript(raisePower:Double) -> Double {
        get {
            return pow(base, raisePower)
        }
        
        set {
            //no implementation here
            //since we have no reason to set anything
        }
    }
}

var power = PowerCalculator(base: 3)
power[3]

struct PlayerStats {
    let points:Double
    let gamesPlayed:Double
    
    subscript(stat:String) -> Double {
        switch stat {
            case "P":
                return points;
            case "GP":
                return gamesPlayed;
            case "PPG":
                return points/gamesPlayed;
        default:
            return 0
        }
    }
}

let myPlayerStats = PlayerStats(points: 484, gamesPlayed: 93)

myPlayerStats["P"]
myPlayerStats["GP"]
myPlayerStats["PPG"]







