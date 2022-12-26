class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var i: Int = 0
        var maxAccessibleIndex: Int = 0
        
        while i <= maxAccessibleIndex && i < nums.count {
            maxAccessibleIndex = max(maxAccessibleIndex, i + nums[i])
            i += 1
        }
        
        return i == nums.count
    }
}
