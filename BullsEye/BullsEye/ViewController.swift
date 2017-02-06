//  ViewController.swift
//  BullsEye
//
//  Created by Divine Davis on 9/2/16.
//  Copyright © 2016 Juniper. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    //Declaring the global variables
    @IBOutlet weak var slider : UISlider!
    
    @IBOutlet weak var targetLabel : UILabel!
    
    @IBOutlet weak var scoreLabel : UILabel!
    
    @IBOutlet weak var roundLabel: UILabel!
    
    
    var currentValue : Int = 50
    
    var targetValue : Int = 0
    
    var score = 0
    
    var round = 1
    
    var string = "String"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNewGame()
        updateLabels()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
        
        let points = 100 - difference
        
        let title : String
        
        score += points
        
        round += 1
        
        
        
        switch difference {
        case 0:
            title = "You got a perfect score!"
        case 1..<5:
            title = "Very close!"
        default:
            title = "Better luck next time!"
        }
        
        let message = "You had \(currentValue)" + "\nYou scored \(points) points"
       
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: {
            action in
            self.startNewRound()
            self.updateLabels()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func startOver() {
        
        startNewGame()
        updateLabels()
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        view.layer.add(transition, forKey: nil)
        
    }
    
    func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        
        currentValue = lround(Double(slider.value))
    
    }
    
    func startNewRound() {
       
        targetValue = 1 + Int(arc4random_uniform(100))
        
        currentValue = 50
        
        slider.value = Float(currentValue)
        
        updateLabels()
    }
    
    func updateLabels() {
        
        targetLabel.text = String(targetValue)
        
        scoreLabel.text = String(score)
        
        roundLabel.text = String(round)
        
    }


}

