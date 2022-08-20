//
//  ViewController.swift
//  PreWork
//
//  Created by Rubi Renteria  on 8/6/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var Billamount: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(Billamount.text!) ?? 0
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        // Updaet Tip Amount Label
        TipAmount.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

