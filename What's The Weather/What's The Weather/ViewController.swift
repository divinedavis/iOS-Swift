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
        
        self.view.endEditing(true)
        
        var urlString = "http://www.weather-forecast.com/locations/" + city.text.stringByReplacingOccurrencesOfString(" ", withString: "") + "/forecasts/latest"
        
        var url = NSURL(string: urlString)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){(data, response, error) in
            
            var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding) 
            var contentArray  = urlContent!.componentsSeparatedByString("<span class=\"phrase\">")
            var newContentArray = contentArray[1].componentsSeparatedByString("</span>")
            
            self.message.text = (newContentArray[0] as! String)
           
        }
        task.resume()
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

