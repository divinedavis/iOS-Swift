//: Playground - noun: a place where people can play

import UIKit

var tasks = ["Clean house", "Walk dog", "Wash the car", "Milk the cow", "Take a shower", "rake leaves", "Mow lawn"]

tasks.removeAtIndex(0)
tasks.removeLast()
tasks.removeAll(keepCapacity: false)
tasks = []
