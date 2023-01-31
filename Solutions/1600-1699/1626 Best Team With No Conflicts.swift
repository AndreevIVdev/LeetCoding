class Solution {
    func bestTeamScore(_ scores: [Int], _ ages: [Int]) -> Int {
        
        let scores = zip(scores, ages)
            .sorted { p1, p2 in
                p1.1 == p2.1 ? p1.0 < p2.0 : p1.1 < p2.1
            }
            .map(\.0)
        
        var dp: [Int] = .init(repeating: 0, count: scores.count)
        
        for i in 0..<dp.count {
            dp[i] = scores[i]
            
            for j in 0..<i where scores[j] <= scores[i] {
                dp[i] = max(dp[i], scores[i] + dp[j])
            }
        }
        
        return dp.max()!
    }
}
