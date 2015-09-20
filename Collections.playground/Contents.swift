//: Playground - noun: a place where people can play

import UIKit

var names = ["Steve", "Jeff", "Andy"]

names[2]

names.count

names.isEmpty

names.append(" Bond")

var lastName = ["Bonder", "Smith", "Juno"]

names = names + lastName

names[4]

names.insert("Poop", atIndex: 4)
names.removeAtIndex(2)

//Dictionaries

var homeruns : [String: Int] = ["Posey" : 24, "Pagan" : 19, "Pence" : 33]

homeruns["Posey"]
homeruns["Scandal"] = 10

homeruns["Posey"] = 44
homeruns["Posey"]
homeruns["Scandal"] = nil
