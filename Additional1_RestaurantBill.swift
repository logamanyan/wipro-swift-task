// Additional Task 1 (Topic 3): Restaurant bill calculator.
import Foundation

// Step 1: price and quantity; convert quantity to Double for the multiplication.
let itemPrice = 450.0
let quantity = 3
let subtotal = itemPrice * Double(quantity)          // 1350.0

// Step 2: 10% discount only if the customer has a coupon AND subtotal > 1000.
let hasCoupon = true
let discount = (hasCoupon && subtotal > 1000) ? subtotal * 0.10 : 0.0   // 135.0

// Step 3: GST is 18% of the discounted amount.
let discountedAmount = subtotal - discount           // 1215.0
let gst = discountedAmount * 0.18                    // 218.7
let total = discountedAmount + gst                   // 1433.7

// Step 4: split between 4 people.
let people = 4
let share = total / Double(people)

print("Subtotal: \(subtotal)")
print("Discount: \(discount)")
print("GST: \(gst)")
print("Total: \(total)")
print("Each person pays: \(String(format: "%.2f", share))")

// Step 5: integer division and remainder to break 1234 rupees into hundreds.
let amount = 1234
let hundreds = amount / 100       // 12
let remainder = amount % 100      // 34
print("\(amount) rupees = \(hundreds) hundreds and \(remainder) rupees left over")
