class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        nums.indices.map { nums[0...$0].reduce(0, +) }
    }
}
