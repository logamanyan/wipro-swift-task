// Task 3.5: Rectangle struct with a computed property area.

struct Rectangle {
    var width: Double
    var height: Double

    // Computed property: calculated each time it is read, not stored.
    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 5, height: 3.5)
print("Area: \(rectangle.area)")   // 17.5
