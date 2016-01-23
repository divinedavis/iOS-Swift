//
//  ViewController.swift
//  Hour 16 Understanding Memory allocation and References
//
//  Created by Divine Davis on 1/20/16.
//  Copyright © 2016 Divine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enum iPhoneModel : String {
            case iPhone4 = "iPhone4", iPhone4S = "iPhone4S", iPhone5 = "iPhone5"
            case iPhone5C = "iPhone5C", iPhone5S = "iPhone5S", iPhone6 = "iPhone6"
        }
        class Phone {
            let model : iPhoneModel
            weak var owner : Person?
            init(model : iPhoneModel) {
                self.model = model
                print("\(model.rawValue) is being initialized")
            }
            deinit {
                print("\(model.rawValue) is deinitialized")
            }
        }
        
        class Person {
            let name : String
            var phone : Phone?
            init(name : String) {
                self.name = name
                print("\(name) is being initialized")
            }
            deinit {
                print("\(name) is being deinitialized")
            }
        }
        
        var aPerson : Person?
        var aPhone : Phone?
        
        aPerson = Person(name: "Steve")
        aPhone = Phone(model: .iPhone6)
        
        aPerson = nil
        aPhone = nil
        
        aPerson!.phone = aPhone
        aPhone!.owner = aPerson
        
        aPerson = nil
        aPerson = nil
        
        
        }
    
    class MathFunction {
        var firstNum : Int = 0
        var secondNum : Int = 0
        var multiply: () -> Int = {
            return self.firstNum * self.secondNum
            
        }
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

