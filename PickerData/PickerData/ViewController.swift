//
//  ViewController.swift
//  PickerData
//
//  Created by Divine Davis on 8/6/15.
//  Copyright (c) 2015 Juniper Street Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let moodArray = ["Happy", "Mad", "Angry", "Sad", "Moody"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor: UIColor
        
        switch row {
        case 0:
            newBackgroundColor = UIColor.yellowColor()
        case 1:
            newBackgroundColor = UIColor.blackColor()
        case 2:
            newBackgroundColor = UIColor.blueColor()
        case 3:
            newBackgroundColor = UIColor.purpleColor()
        default:
            newBackgroundColor = UIColor.whiteColor()
        }
        self.view.backgroundColor = newBackgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

