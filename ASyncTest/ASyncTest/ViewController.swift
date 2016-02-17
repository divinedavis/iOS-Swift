//
//  ViewController.swift
//  ASyncTest
//
//  Created by Divine Davis on 2/17/16.
//  Copyright © 2016 Divine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { for _ in 1...10 { print("A") }
            
            dispatch_async(dispatch_get_main_queue()) {
                for _ in 1...10 { print("B") }
            }
            
            
            }
        
       

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

