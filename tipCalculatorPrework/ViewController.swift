//
//  ViewController.swift
//  tipCalculatorPrework
//
//  Created by Russelle Pineda on 2/1/19.
//  Copyright © 2019 Russelle Pineda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billTextfield: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //when main view is tapped
    @IBAction func tapMainView(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    //calculate the tip
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billTextfield.text!) ?? 0
        
        
        let tipPercentArray = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentArray[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //tipLabel.text = "$\(tip)"
        //totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

