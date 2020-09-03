//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ali on 02/09/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", colour: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", colour: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", colour: #colorLiteral(red: 0.6637606621, green: 0, blue: 0.08376566321, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "n/a"
    }
    
    func getColor() -> UIColor {
        return bmi?.colour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
}
