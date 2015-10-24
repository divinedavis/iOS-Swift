//: Playground - noun: a place where people can play

import UIKit

var i = 1
var j = 1
var x = 4

while ( i < 10) {
    j = j * i
    i = i + i
    
    if (i == x) {
        break
    }
}