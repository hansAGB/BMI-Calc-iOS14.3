//
//  ResultViewController.swift
//  BMI Calc iOS14.3
//
//  Created by Hans Aangeenbrug on 01/01/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiHintLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
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
