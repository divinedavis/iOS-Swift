//: Playground - noun: a place where people can play

import UIKit

let myButton = UIButton()
let mySlider = UISlider()
let myTextField = UITextField()
let myDatePicker = UIDatePicker()

let controls = [myButton, mySlider, myTextField, myDatePicker]

for item in controls {
        //option 1: check type with "is"
    if item is UIDatePicker {
        println("We have a datePicker")
        //downcase with "as"
        let picker = item as! UIDatePicker
        picker.datePickerMode = UIDatePickerMode.CountDownTimer
    }
    //option 1: try to downcase with as?
    let picker = item as? UIDatePicker
    //then check if it worked, and unwrap the optional
    if picker != nil {
        picker!.datePickerMode = UIDatePickerMode.CountDownTimer
    }
    //option 3 - combine
    if let picker = item as? UIDatePicker {
        picker.datePickerMode = UIDatePickerMode.CountDownTimer
    }
}
