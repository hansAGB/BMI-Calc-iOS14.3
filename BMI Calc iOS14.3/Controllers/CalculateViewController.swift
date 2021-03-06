//
//  ViewController.swift
//  BMI Calc iOS14.3
//
//  Created by Hans Aangeenbrug on 01/01/2021.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightSlider.value = 1.5
        weightSlider.value = 100
    }

    @IBAction func heightSliderChanged(_ sender:
        UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value)) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value)) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        calculatorBrain.CalculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getCalculatedBMI()
            destinationVC.bmiAdvice = calculatorBrain.getCalculatedAdvice()
            destinationVC.bmiColor = calculatorBrain.getCalculatedColor()
        }
    }
    
}

