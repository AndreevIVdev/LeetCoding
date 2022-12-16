class Solution {
    func rob(_ nums: [Int]) -> Int {
        var last = 0
        var beforeLast = 0
        
        for num in nums {
            (beforeLast, last) = (last, max(beforeLast + num, last))
        }
        
        return last
    }
}
