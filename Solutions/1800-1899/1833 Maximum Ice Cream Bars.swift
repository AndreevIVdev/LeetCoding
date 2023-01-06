class Solution {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        var costs = costs.sorted()
        var iceCreams = 0
        var coins = coins
        
        while iceCreams < costs.count && costs[iceCreams] <= coins {
            coins -= costs[iceCreams]
            iceCreams += 1
        }
        
        return iceCreams
    }
}
