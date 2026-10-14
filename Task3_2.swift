// Task 3.2: Enum with Int raw values.

enum Weekday: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}

let day = Weekday.wednesday
print("Wednesday raw value: \(day.rawValue)")   // 3

// Creating a case from a raw value returns an optional.
if let fromRaw = Weekday(rawValue: 6) {
    print("Raw value 6 is \(fromRaw)")           // saturday
}

if Weekday(rawValue: 9) == nil {
    print("Raw value 9 does not match any weekday")
}
