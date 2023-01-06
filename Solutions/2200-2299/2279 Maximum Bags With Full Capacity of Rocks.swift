class Solution {
    func maximumBags(_ capacities: [Int], _ rocks: [Int], _ additionalRocks: Int) -> Int {
        var fullBagsCount = 0
        var additionalRocks = additionalRocks
        var remainders: [Int] = []
        
        for (capacity, rock) in zip(capacities, rocks) {
            remainders.append(capacity - rock)
        }
        
        for remainder in remainders.sorted() where remainder <= additionalRocks {
            additionalRocks -= remainder
            fullBagsCount += 1
        }
        
        return fullBagsCount
    }
}
