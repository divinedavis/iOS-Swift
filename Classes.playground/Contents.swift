//: Playground - noun: a place where people can play

import UIKit

class House {
    var exteriorColor = "Brown"
    var currentAirTemp = 70
    var isGarageOpen = true
    var isAlarmEnable = false
    
    func prepareForNighttime() {
        isGarageOpen = false
        isAlarmEnable = true
        currentAirTemp = 60
    }
    
    func prepareForDaytime() {
        isGarageOpen = true
        isAlarmEnable = false
        currentAirTemp = 70
    }
    
    
}

var myHouse = House()
func startFire() {
    
}
myHouse.exteriorColor

class Cabin: House {
    override init() {
        super.init()
        exteriorColor = "Red"
    }
    
    override func prepareForDaytime() {
        startFire()
    }
}

