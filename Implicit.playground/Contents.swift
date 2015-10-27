//: Playground - noun: a place where people can play

import UIKit

let odometerField = UITextField()

let lastOdometerField = UITextField()

let gallonsField = UITextField()

let avgMPGLabel = UITextField()

let distanceLabel = UITextField()

odometerField.text = "344344"

lastOdometerField.text = "344321"

gallonsField.text = "15"

var odometerString = odometerField.text

var lastOdometerString = lastOdometerField.text

var gallonsString = gallonsField.text

var avgMPGDouble = 0.0

var distanceDouble = 0.0

var gallonsDouble = 0.0

if let odometerInt = Int(odometerString!) {
    
    distanceDouble = Double(odometerInt)
}

if let lastOdometerInt = Int(lastOdometerString!) {
    
    distanceDouble -= Double(lastOdometerInt)
}

if let gallonsInt = Int(gallonsString!) {
    
    gallonsDouble = Double(gallonsInt)
    
    avgMPGDouble = distanceDouble / gallonsDouble
}

avgMPGLabel.text = "\(avgMPGDouble) MPG"

distanceLabel.text = "\(distanceDouble) miles per fill-up"

avgMPGDouble
distanceDouble

















