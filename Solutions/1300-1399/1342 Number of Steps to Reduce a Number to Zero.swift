class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var num = num
        var ans = 0
        
        while num > 0 {
            num = num.isMultiple(of: 2) ? num / 2 : num - 1
            ans += 1
        }
        
        return ans
    }
}
