class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        var lettersStorage: [Character: Int] = [:]
        
        for letter in magazine {
            lettersStorage[letter, default: 0] += 1
        }
        
        for letter in ransomNote {
            lettersStorage[letter, default: 0] -= 1
            
            if lettersStorage[letter, default: 0] < 0 {
                return false
            }
        }
        
        return true
    }
}
