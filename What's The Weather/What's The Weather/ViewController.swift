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
    
    @IBOutlet weak var downloadProgress: UIProgressView!
    
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
        

        self.downloadProgress.progress = 0.0
       
    }
    func makeMyProgressBarMoving {
    
        var recievedData : Float
        var expectedTotalSize : Float
        var actual : Float = downloadProgress.progress
        if (actual < 1) {
            downloadProgress.progress = actual + (recievedData/expectedTotalSize)
            [NSTimer .scheduledTimerWithTimeInterval(0.05, invocation: self, repeats: false)]
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

