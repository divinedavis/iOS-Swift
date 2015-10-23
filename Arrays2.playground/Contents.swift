//: Playground - noun: a place where people can play

import UIKit

var tasks = [String] ()

tasks = ["Clean house", "Walk dog"]

tasks.append("Wash the car")

print(tasks)

tasks += ["Milk the cow"]

tasks += ["Rake leaves", "Mow lawn"]

tasks.count

tasks.insert("Take a shower", atIndex: 4)

tasks.removeAtIndex(0)

tasks.removeLast()

tasks.removeAll(keepCapacity: false) //Or...

tasks = [] //Either line would remove all items and set size to 0