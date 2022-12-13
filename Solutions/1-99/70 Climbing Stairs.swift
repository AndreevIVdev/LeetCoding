class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 3 else {
            return n
        }
        
        var lastStep: Int = 3
        var beforeLastStep: Int = 2
        var temp = 0
        
        for _ in 4...n {
            temp = lastStep + beforeLastStep
            beforeLastStep = lastStep
            lastStep = temp
        }
        
        return lastStep
    }
}
