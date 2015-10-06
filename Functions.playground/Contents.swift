//: Playground - noun: a place where people can play

import UIKit

func countDownFrom(ix : Int) {
    print(ix)
    if ix > 0 {
        countDownFrom(ix - 1)
    }
}


countDownFrom(9)

func doThis(f:()->()) {
    f()
}

func whatToDo() {
    print("I did this")
}

doThis(whatToDo)