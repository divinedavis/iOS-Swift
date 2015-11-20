//
//  CoursesViewController.swift
//  Mini Moodle #5
//
//  Created by Divine Davis on 11/19/15.
//  Copyright © 2015 Divine. All rights reserved.
//

import UIKit

class CoursesViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

       
       welcomeLabel.text = "HI"
       
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
    @IBAction func cancelToCoursesViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func saveCourse(segue:UIStoryboardSegue) {
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
