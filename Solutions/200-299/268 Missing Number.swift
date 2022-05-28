class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        Set(0..<nums.count).subtracting(nums).first!
    }
}
