// Task 2.7: Look up a student's mark by name.

let marks = ["Anu": 88, "Ben": 72, "Chitra": 95, "Dev": 64, "Esha": 81]

func lookup(_ name: String) {
    // Dictionary subscripts return an optional.
    if let mark = marks[name] {
        print("\(name) scored \(mark)")
    } else {
        print("Not found")
    }
}

lookup("Chitra")
lookup("Zara")
