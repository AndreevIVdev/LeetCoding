class Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        var res: [[Int]] = []
        people
            .sorted { p1, p2 in
                p1[0] == p2[0] ? p1[1] < p2[1] : p1[0] > p2[0]
            }
            .forEach { p in
                res.insert(p, at: p[1])
            }
        
        return res
    }
}
