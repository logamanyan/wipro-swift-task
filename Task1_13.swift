// Task 1.13: Prime check, then print all primes between 1 and 50.

func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    var divisor = 2
    while divisor * divisor <= number {
        if number % divisor == 0 { return false }
        divisor += 1
    }
    return true
}

print("Is 29 prime? \(isPrime(29))")
print("Is 30 prime? \(isPrime(30))")

print("Primes between 1 and 50:")
for candidate in 1...50 where isPrime(candidate) {
    print(candidate, terminator: " ")
}
print()
