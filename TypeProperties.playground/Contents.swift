//: Playground - noun: a place where people can play

import UIKit

class BankAccount {
    
    //Stored properties
    let accountNumber : Int
    let roundingCode = 12345678
    var balance : Double
    class var interestRate : Float {
        return 2.0
    }
    
    init(accountNum : Int, initialBalance : Double) {
        self.accountNumber = accountNum
        self.balance = initialBalance
    }
    
    func deposit(amount : Double) {
        balance += amount
    }
    func withdraw(amount : Double) -> Bool {
        if balance > amount {
            balance -= amount
            return true
        } else {
            println("Insufficient funds")
            return false
        }
    }
    class func example() {
        println("This is an example method")
    }
}

var firstAccount = BankAccount(accountNum : 1212121212, initialBalance: 1000.0)
var secondAccount = BankAccount(accountNum: 22121212, initialBalance: 3444.54)
BankAccount.interestRate
BankAccount.example()
