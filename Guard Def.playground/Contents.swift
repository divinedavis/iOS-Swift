//: Playground - noun: a place where people can play

import UIKit

func checkDrinkingAge() {
    
    let canDrink = true
    
    if canDrink {
        print("You may enter")
        //more code
        //more code
        //more code
    } else {
        //more code
        //more code
        //more code
        print("Let me take you to the jail")
    }
}

let iCanDrink = true

func checkDrinkingAges() {
    
    guard iCanDrink else {
        // iCanDrink == false
        print("You can't drink")
        return
    }
    
    print("You can drink")
}

checkDrinkingAges()


var publicName: String? = "Divine Davis"
var publicPhoto: String? = "Divine's Face"
var publicAge: Int? = 25

//: The Worst Nighware

func unwrapOneByOne() {
    if let name = publicName {
        if let photo = publicPhoto {
            if let age = publicAge {
                print("Divine: \(name), \(photo), \(age)")
            } else {
                print("age is missing")
            }
        } else {
            print("photo is missing")
        }
    }else {
        print("name is missing")
    }
}

unwrapOneByOne()

//: Slightly Better

func unwrapBetter() {
    
    if let name = publicName {
        print("Yes name")
    } else {
        print("No name")
        return
    }
    
    if let photo = publicPhoto {
        print("Yes photo")
    } else {
        print("No photo")
    }
    
    if let age = publicAge {
        print("Yes age")
    } else {
        print("No age")
    }
}
 unwrapBetter()

//: Introduction to guard statement

func unwrapOneByOneWithGuard() {
    guard let name = publicName else {
        print("Name missing")
        return
    }
    
    guard let photo = publicPhoto else {
        print("Missing photo")
        return
    }
    
    guard let age = publicAge else {
        print("Missing age")
        return
    }
    
    print(name)
    print(photo)
    print(age)
}

func unwrap() {
    if let name = publicAge, let photo = publicPhoto, let age = publicAge {
        print("Your name is \(name), your photo is \(photo), and your age is \(age)")
    }else {
    print("You don't have any information")
 }
}

unwrap()


func unwrapWithGuard() {
    publicAge = nil
    
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        print("Someting is missing")
        return
    }
    print("Your name is \(name), your photo is \(photo), your age is \(age)")
    //Animation Logic
    //Networking
    //More code, but still slight
}
unwrapWithGuard()

//Defer statement

for i in 1...3 {
    defer { print ("Defferred \(i)")}
    print("First \(i)")
}

func simpleDefer() {
    defer {
        print("Chill, later")
    }
    print("Lets do it now")
}

















