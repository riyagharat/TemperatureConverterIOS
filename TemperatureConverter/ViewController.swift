//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by riya on 8/28/17.
//  Copyright © 2017 riya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tfFa:UITextField!
    @IBOutlet var tfCe:UITextField!
    
    @IBAction func convert(sender: AnyObject){
        var tempInC: Float
        
        if let inText = tfFa.text, !inText.isEmpty {
            if let tempInF = Float(inText) {
                tempInC = (tempInF-32)*5/9
                tfCe.text = String(tempInC)
            }else{
                // the input is not numeric
                tfCe.text = "????"
            }
        }else {
            // No input 
            tfCe.text = "???"
        }
        tfFa.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

