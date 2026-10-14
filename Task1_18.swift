// Task 1.18: Categorise BMI using switch with ranges and a where clause.

func categoriseBMI(_ bmi: Double) -> String {
    switch bmi {
    case ..<0:
        return "Invalid BMI"
    case 0..<18.5:
        return "Underweight"
    case 18.5..<25:
        return "Normal"
    case 25..<30:
        return "Overweight"
    case let value where value >= 30:
        return "Obese"
    default:
        return "Invalid BMI"
    }
}

for bmi in [16.2, 22.4, 27.8, 33.1, -1.0] {
    print("BMI \(bmi): \(categoriseBMI(bmi))")
}
