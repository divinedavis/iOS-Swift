//
//  ViewController.swift
//  Images
//
//  Created by Divine Davis on 9/4/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var counter = 1
    var timer = NSTimer()


    @IBOutlet weak var drumerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonHoldDown(sender: AnyObject) {
        
        counter++
        
        if (counter == 5) {
            counter = 1
        }
        drumerImage.image = UIImage(named: "Drumer\(counter).png")
    }
    
    //Where the image will end up AFTER 'viewDidAppear' is called
    override func viewDidLayoutSubviews() {
        drumerImage.frame = CGRectMake(100, 20, 0, 0)
    }
    
    //Where the view is placed at runtime.
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(3, animations: {
            
            self.drumerImage.frame = CGRectMake(100, 20, 100, 200)
            
        })
    }
    
    func result() {
        counter++
        
        if (counter == 5) {
            counter = 1
        }
        drumerImage.image = UIImage(named: "Drumer\(counter).png")
    }

}

