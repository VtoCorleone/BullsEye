//
//  ViewController.swift
//  BullsEye
//
//  Created by Chapman, Shane on 10/26/15.
//  Copyright © 2015 VtoCorleone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        // generate number from 1 - 99 (100 is exclusive)
        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue) \nThe target value is: \(targetValue)"

        // alert message
        let alert = UIAlertController(title: "Hello, World",
            message: message,
            preferredStyle: .Alert)
        
        // alert button
        let action = UIAlertAction(title: "OK",
            style: .Default,
            handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
}

