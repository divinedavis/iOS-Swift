//
//  ThirdViewController.swift
//  Tabbed
//
//  Created by Divine Davis on 8/10/15.
//  Copyright (c) 2015 Juniper Street Games. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println("initial viewDidLoad of the third VC")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        println("third VC about to appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        println("third VC will disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
