// Task 3.9: Enum with associated values.

enum PaymentMethod {
    case cash
    case card(number: String)
    case upi(id: String)
}

func pay(using method: PaymentMethod) {
    switch method {
    case .cash:
        print("Paid in cash")
    case .card(let number):
        // Show only the last four digits.
        print("Paid by card ending in \(number.suffix(4))")
    case .upi(let id):
        print("Paid via UPI id \(id)")
    }
}

pay(using: .cash)
pay(using: .card(number: "4111111111111234"))
pay(using: .upi(id: "student@upi"))
