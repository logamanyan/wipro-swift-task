// Task 3.8: CaseIterable enum with a computed property.

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune

    // Position from the Sun (Mercury = 1).
    var orderFromSun: Int {
        switch self {
        case .mercury: return 1
        case .venus:   return 2
        case .earth:   return 3
        case .mars:    return 4
        case .jupiter: return 5
        case .saturn:  return 6
        case .uranus:  return 7
        case .neptune: return 8
        }
    }
}

for planet in Planet.allCases {
    print("\(planet) is planet number \(planet.orderFromSun) from the Sun")
}
