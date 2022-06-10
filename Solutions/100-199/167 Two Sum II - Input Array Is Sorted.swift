class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        guard !numbers.isEmpty else {
            return []
        }
        
        var front = numbers.indices.first!
        var back = numbers.indices.last!

        while numbers[front] + numbers[back] != target {

            if numbers[front] + numbers[back] < target {
                front += 1
            } else {
                back -= 1
            }
        }

        return [front + 1, back + 1]
    }
}
