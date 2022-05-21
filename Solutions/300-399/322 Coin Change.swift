class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount > 0 else { return 0 }
        var dp = [Int](repeating: amount + 1, count: amount + 1)
        dp[0] = 0
        for i in 1...amount {
            for coin in coins.filter { $0 <= i } {
                dp[i] = min(dp[i], dp[i - coin] + 1)
            }
        }
        return dp[amount] > amount ? -1 : dp[amount]
    }
}
