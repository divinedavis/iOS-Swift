//
//  StopWatchViewController.swift
//  SwiftStopWatch
//
//  Created by Divine Davis on 11/7/15.
//  Copyright © 2015 HackDuke. All rights reserved.
//

import UIKit

class StopWatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateTime() {
        let currentTime = NSDate.timeIntervalSinceReferenceDate()
        
        var elapsedTime = currentTime - startTime
        
        let minutes = UInt8(elapsedTime)
        elapsedTime -= NSTimeInterval(seconds)
        
        let milliseconds = UInt8(elapsedTime * 100)
        
        let strMinutes = String(format: "%02d", arguments: minutes)
        let strSeconds = String(format: "%02d", arguments: seconds)
        let strMilliseconds = String(format: "%02", arguments: milliseconds)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
