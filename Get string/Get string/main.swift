//
//  main.swift
//  Get string
//
//  Created by Divine Davis on 2/16/16.
//  Copyright © 2016 Divine. All rights reserved.
//

import Foundation

func input() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding: NSUTF8StringEncoding) as! String
}
print("Please enter your input..")
var theInput = input()
print("\(theInput)")










