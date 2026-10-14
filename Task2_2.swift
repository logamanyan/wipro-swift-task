// Task 2.2: Favourite fruits - append, insert at index 0, remove.

var fruits = ["Mango", "Apple", "Banana", "Grapes", "Orange"]
print("Start: \(fruits)")

fruits.append("Pineapple")
print("After append: \(fruits)")

fruits.insert("Strawberry", at: 0)
print("After insert at 0: \(fruits)")

fruits.remove(at: 3)   // removes "Banana"
print("After remove: \(fruits)")
