//: Playground - noun: a place where people can play

import UIKit

let salary = 50000
let bonus = 10000
var totalPay = 0
let employeeShouldRecieveABonus = true

if employeeShouldRecieveABonus {
    
    totalPay = salary + bonus
    
} else {
    
    totalPay = salary
}

totalPay = (employeeShouldRecieveABonus) ? salary + bonus : salary



