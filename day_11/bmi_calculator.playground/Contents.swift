import UIKit

//Mark:- BMI Calculator
/*Write function bmi that calculates body mass index (bmi = weight / height2).
 
 if bmi <= 18.5 return "Underweight"

 if bmi <= 25.0 return "Normal"

 if bmi <= 30.0 return "Overweight"

 if bmi > 30 return "Obese"

*/

func bmi(_ weight: Int, _ height: Double) -> String {
    let result = Double(weight) / (pow(height, 2))

    switch true {
    case result <= 18.5:
        return("Underweight")
    case result <= 25.0:
        return("Normal")
    case result <= 30.0:
        return("Overweight")
    default:
        return("Obese")
    }
}

bmi(50, 1.8)

