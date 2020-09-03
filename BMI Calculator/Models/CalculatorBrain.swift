//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ali on 02/09/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    
}
