//
//  CurrencyViewController.swift
//  moneyConversion
//
//  Created by Devin Campana on 4/8/22.
//

import UIKit
import WebKit

class CurrencyViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    let currencyURL = "https://finance.yahoo.com/currencies/?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAACMaq8PB1CG-bB1Mxgu64LGZdThnA82gG6UhgKIDDlZtC6mbpHPl2QghyaewdO4_0RoQ0CAj-H3fHP-U-wRWTUPZSEjSV9uwUPT1VA2QmfMNeQwmemB8wkBT8HKfBSaSNLVRF5X2WrE1wVCA27VftPGlinhZNAGepxumEUUxhqvg"
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sendRequest(urlString: currencyURL)
        // Do any additional setup after loading the view.
    }
    
    func sendRequest(urlString: String) {
        let myURL = URL(string: urlstring)
        let myRequest = URLRequest(url: MyURL!)
        webView.load(myRequest)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
