//
//  CalculatorBrain.swift
//  BMI Calc iOS14.3
//
//  Created by Hans Aangeenbrug on 02/01/2021.
//

import Foundation

struct CalculatorBrain {
    var bmi: String = "0.0"
    
    mutating func CalculateBMI(height: Float, weight: Float) {
        bmi = String(format: "%.1f", (weight / (height * height)))
    }
}
