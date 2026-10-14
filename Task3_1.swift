// Task 3.1: Enum Direction with a switch.

enum Direction {
    case north, south, east, west
}

func describe(_ direction: Direction) {
    switch direction {
    case .north: print("Heading north: towards the top of the map")
    case .south: print("Heading south: towards the bottom of the map")
    case .east:  print("Heading east: towards the sunrise")
    case .west:  print("Heading west: towards the sunset")
    }
}

for direction in [Direction.north, .south, .east, .west] {
    describe(direction)
}
