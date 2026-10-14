// Task 3.12: Inheritance and overriding.

class Vehicle {
    var name: String

    init(name: String) {
        self.name = name
    }

    func description() -> String {
        return "\(name) is a vehicle"
    }
}

class Car: Vehicle {
    override func description() -> String {
        return "\(name) is a car with four wheels"
    }
}

class Bike: Vehicle {
    override func description() -> String {
        return "\(name) is a bike with two wheels"
    }
}

let vehicles: [Vehicle] = [
    Vehicle(name: "Generic vehicle"),
    Car(name: "Swift"),
    Bike(name: "Splendor")
]

// Each object calls its own version of description() (polymorphism).
for vehicle in vehicles {
    print(vehicle.description())
}
