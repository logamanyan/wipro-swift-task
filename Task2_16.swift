// Task 2.16: 3x3 matrix - print row by row and sum the main diagonal.

let matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

for row in matrix {
    print(row.map { String($0) }.joined(separator: " "))
}

var diagonalSum = 0
for i in 0..<matrix.count {
    diagonalSum += matrix[i][i]
}
print("Diagonal sum: \(diagonalSum)")   // 1 + 5 + 9 = 15
