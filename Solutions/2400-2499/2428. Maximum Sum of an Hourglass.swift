class Solution {
    func maxSum(_ grid: [[Int]]) -> Int {
        let yRange: Range<Int> = 1..<grid.count - 1
        let xRange: Range<Int> = 1..<grid[0].count - 1
        var res = 0
        
        for y in yRange {
            for x in xRange {
                let sum = grid[y][x] +
                grid[y - 1][x - 1] + grid[y - 1][x] + grid[y - 1][x + 1] +
                grid[y + 1][x - 1] + grid[y + 1][x] + grid[y + 1][x + 1]
                
                res = max(res, sum)
            }
        }
        
        return res
    }
}
