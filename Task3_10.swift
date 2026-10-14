// Task 3.10: BankAccount struct with mutating methods; overdraft is prevented.

struct BankAccount {
    private(set) var balance: Double

    init(balance: Double = 0) {
        self.balance = balance
    }

    // Structs are value types, so methods that change properties must be mutating.
    mutating func deposit(_ amount: Double) {
        guard amount > 0 else {
            print("Deposit must be positive")
            return
        }
        balance += amount
        print("Deposited \(amount). Balance: \(balance)")
    }

    mutating func withdraw(_ amount: Double) {
        guard amount > 0 else {
            print("Withdrawal must be positive")
            return
        }
        guard amount <= balance else {
            print("Insufficient funds: cannot withdraw \(amount) from \(balance)")
            return
        }
        balance -= amount
        print("Withdrew \(amount). Balance: \(balance)")
    }
}

var account = BankAccount(balance: 1000)
account.deposit(500)
account.withdraw(300)
account.withdraw(5000)   // blocked: would overdraw the account
