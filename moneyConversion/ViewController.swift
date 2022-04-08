//
//  ViewController.swift
//  moneyConversion
//
//  Created by Devin Campana on 4/7/22.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    @IBOutlet weak var displayNumber: UILabel!
    
    @IBOutlet weak var enterAmount: UITextField!
    
    
    @IBAction func usToCanButton(_ sender: Any) {
        let numberString = enterAmount.text!
        let number = Double(numberString)
        
        let usToCanResult = (number!) * 1.26
        let canRoundResult = (usToCanResult * 10) / 10.00
        displayNumber.text = "🇺🇸$\(numberString) is C$ \(canRoundResult) in Canada🇨🇦"
    }
    
    
    @IBAction func canToUSButton(_ sender: Any) {
        let numberString = enterAmount.text!
        let number = Double(numberString)
        
        let canToUsResult = (number!) * 0.8
        let usRoundResult = (canToUsResult * 10) / 10.00
        displayNumber.text = "🇨🇦C$\(numberString) is $\(usRoundResult) in the US🇺🇸"
    }
    
    
    @IBAction func usToYenButton(_ sender: Any) {
        let numberString = enterAmount.text!
        let number = Double(numberString)
        
        let usToYen = (number!) * 124.34
        let usToYenResult = (usToYen * 10) / 10.00
        displayNumber.text = "🇺🇸$\(numberString) is ¥\(usToYenResult) in Japan🇯🇵"
    }
    
    
    @IBAction func yenToUsButton(_ sender: Any) {
        let numberString = enterAmount.text!
        let number = Double(numberString)
        let yenToUs = (number!) * 0.0080

        displayNumber.text = "🇯🇵¥\(numberString) is $\(yenToUs) in the US🇺🇸"
    }
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

