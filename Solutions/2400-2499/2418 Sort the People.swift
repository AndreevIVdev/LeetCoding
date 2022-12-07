class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        zip(names, heights)
            .sorted{ $0.1 > $1.1 }
            .map(\.0)
        
//        let count = names.count
//
//        var people: [(name: String, height: Int)] = .init(repeating: (name: "", height: 0), count: count)
//
//        for i in 0..<count {
//            people[i].name = names[i]
//            people[i].height = heights[i]
//        }
//
//        let sortedPeople = people.sorted { person1, person2 in
//            person1.height > person2.height
//        }
//
//        var sortedNames: [String] = .init(repeating: "", count: count)
//        
//        for i in 0..<count {
//            sortedNames[i] = sortedPeople[i].name
//        }
//
//        return sortedNames
    }
}
