//
//  ViewController.swift
//  Helloworld Swift
//
//  Created by Pao Chen Yu on 7/13/14.
//  Copyright (c) 2014 Pao Chen Yu. All rights reserved.
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
    @IBAction func buttonPress(sender: AnyObject) {
        helloworldSwift()
    }
    
    func helloworldSwift() {
        
        var osVersion = CYPiOSVersionChecker.getOSVersion()
        if osVersion >= 8.0 {
            println("iOS 8 Style Hello World")
            let alert = UIAlertController(title: "Swift", message: "Hello World!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else{
            println("iOS < 8 Style Hello World")
            var alert = UIAlertView(title: "Swift", message: "Hello World!", delegate: nil, cancelButtonTitle: "OK");
            alert.show()
        }
    }
    
}

