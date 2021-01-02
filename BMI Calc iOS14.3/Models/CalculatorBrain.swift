//
//  CalculatorBrain.swift
//  BMI Calc iOS14.3
//
//  Created by Hans Aangeenbrug on 02/01/2021.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func CalculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        var advice: String
        var color: UIColor

        switch bmiValue {
        case _ where bmiValue < 15 :
            advice = "Go to your doctor, fast!"
            color = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        case _ where bmiValue <= 16:
            advice = "Don't go outside you'll blow away!"
            color = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        case _ where bmiValue <= 18.5:
            advice = "Eat some more Cookies!"
            color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        case _ where bmiValue <= 25:
            advice = "You are just right!"
            color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        case _ where bmiValue <= 30:
            advice = "You should take care and lose weight!"
            color = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        case _ where bmiValue <= 35:
            advice = "You should considder getting a stomach reduction!"
            color = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        case _ where bmiValue < 40:
            advice = "Get a stomach reduction, now!"
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        default:
            advice = "Lose weight or lose your life!"
            color = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)

    }
    
    func getCalculatedBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getCalculatedAdvice() -> String {
        return bmi?.advice ?? "We don't know anything"
    }
    
    func getCalculatedColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
}
