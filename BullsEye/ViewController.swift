//
//  ViewController.swift
//  BullsEye
//
//  Created by Chapman, Shane on 10/26/15.
//  Copyright © 2015 VtoCorleone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        // alert message
        let alert = UIAlertController(title: "Hello, World",
            message: "This is my first app!",
            preferredStyle: .Alert)
        
        // alert button
        let action = UIAlertAction(title: "Awesome",
            style: .Default,
            handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }
}

