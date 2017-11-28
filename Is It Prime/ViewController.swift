//
//  ViewController.swift
//  Is It Prime
//
//  Created by Melanie Gravier on 11/26/17.
//  Copyright © 2017 Melanie Gravier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var inputTextField: UITextField!
    
    @IBAction func primeButton(_ sender: Any) {
        let num2 = Int(inputTextField.text!)!
        let num2Dbl = Double(num2)
        var pFactor = 2
        
        if (num2 == 1 || num2 == 2) {
            resultLabel.text = "Number is not prime"
        }
        else {
            while ((Double(pFactor) <= sqrt(num2Dbl)) && (num2 % pFactor != 0)) {
                pFactor = pFactor + 1
            }
            if (Double(pFactor) <= sqrt(num2Dbl)) {
                resultLabel.text = "Number is not prime!!!"
            }
            else {
                resultLabel.text = "Number is prime!!!"
            }
        }
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

