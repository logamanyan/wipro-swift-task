// Task 3.13: didSet property observer on salary.

class Employee {
    var name: String

    var salary: Double {
        didSet {
            print("\(name)'s salary changed from \(oldValue) to \(salary)")
        }
    }

    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary   // observers are not called during init
    }
}

let employee = Employee(name: "Ravi", salary: 30000)
employee.salary = 35000
employee.salary = 42000
