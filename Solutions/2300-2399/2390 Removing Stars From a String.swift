class Solution {
    func removeStars(_ s: String) -> String {
        
        var res: String = ""
        
        for c in s {
            if c == "*" {
                _ = res.popLast()
            } else {
                res += String(c)
            }
        }
        
        return res
    }
}
