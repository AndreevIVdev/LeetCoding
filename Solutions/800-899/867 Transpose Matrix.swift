class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var ans: [[Int]] = .init(repeating: [Int](repeating: 0, count: matrix.count), count: matrix[0].count)
        for row in matrix.indices {
            for column in matrix[0].indices {
                ans[column][row] = matrix[row][column]
            }
        }
        return ans
    }
}
