class Solution {
    func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
        score.sorted { $0[k] > $1[k] }
    }
}

/*
 
 class Solution {
     func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
         
         let sortedScore: [[Int]] = score.sorted { s1, s2 in
             s1[k] > s2[k]
         }
         
         return sortedScore
     }
 }
 
 */
