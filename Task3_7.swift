// Task 3.7: Class Car with accelerate() and brake().

class Car {
    var brand: String
    var speed: Int

    init(brand: String, speed: Int = 0) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 10
        print("\(brand) accelerates to \(speed) km/h")
    }

    func brake() {
        // Speed can never go below zero.
        speed = max(0, speed - 10)
        print("\(brand) slows down to \(speed) km/h")
    }
}

let car = Car(brand: "Toyota")
car.accelerate()
car.accelerate()
car.brake()
car.brake()
car.brake()   // already stopped, stays at 0
