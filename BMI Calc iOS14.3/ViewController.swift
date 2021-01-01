//
//  ViewController.swift
//  BMI Calc iOS14.3
//
//  Created by Hans Aangeenbrug on 01/01/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender:
        UISlider) {
        print(String(format: "%.2f", sender.value))
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.f", sender.value))
    }
    
}

