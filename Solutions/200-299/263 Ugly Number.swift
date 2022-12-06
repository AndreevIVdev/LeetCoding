class Solution {
    func isUgly(_ num: Int) -> Bool {
        guard num > 0 else {
            return false
        }
        
        var num = num
        let primeFactors = [2, 3, 5]
        
        for primeFactor in primeFactors {
            while num.isMultiple(of: primeFactor) {
                num /= primeFactor
            }
        }
        
        return num == 1
    }
}
