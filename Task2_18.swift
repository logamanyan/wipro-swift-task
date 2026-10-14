// Task 2.18: Mini project - Shopping cart.
import Foundation

// Price list: item name -> price per unit.
let prices: [String: Double] = [
    "Apple": 30.0,
    "Milk": 55.5,
    "Bread": 40.0,
    "Eggs": 72.0
]

// Items bought (an item can appear more than once).
let cart = ["Apple", "Milk", "Apple", "Bread", "Eggs", "Juice"]

var total = 0.0

for item in cart {
    if let price = prices[item] {
        print("\(item): \(price)")
        total += price
    } else {
        print("\(item): not in price list, skipped")
    }
}

print("Total bill: \(String(format: "%.2f", total))")
