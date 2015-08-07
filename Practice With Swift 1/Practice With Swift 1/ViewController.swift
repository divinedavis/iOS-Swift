//
//  ViewController.swift
//  Practice With Swift 1
//
//  Created by Divine Davis on 8/6/15.
//  Copyright (c) 2015 Juniper Street Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func displayDay(sender: AnyObject) {
        
        //Grab the selected day from the date picker
        var chosenDate = self.datePicker.date
        
        //Create date formatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        //Grab the day and create a message
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        //Create alert
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        //Create an "OK" button
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Destructive, handler: nil))
        
        //Show alert
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        
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

