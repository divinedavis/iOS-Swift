//
//  ViewController.swift
//  What's The Weather
//
//  Created by Divine Davis on 8/31/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var message: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var urlString = "http://www.weather-forecast.com/locations" + city.text + "/forecasts/latest"
        
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

