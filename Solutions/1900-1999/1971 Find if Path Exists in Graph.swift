struct Stack<Element> {

    private var storage: [Element] = []

    mutating func push(_ element: Element) {
        storage.append(element)
    }

    mutating func pop() -> Element? {
        storage.popLast()
    }

    func peek() -> Element? {
        storage.last
    }

    var isEmpty: Bool {
        storage.isEmpty
    }

    var isNotEmpty: Bool {
        !isEmpty
    }

    var count: Int {
        storage.count
    }
}

class Solution {
    func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
        var graph: [Int: [Int]] = [:]
        
        for edge in edges {
            graph[edge[0], default: []].append(edge[1])
            graph[edge[1], default: []].append(edge[0])
        }
        
        var stack: Stack<Int> = .init()
        var visited: Set<Int> = .init()
        
        stack.push(source)
        visited.insert(source)
        
        while let cur = stack.pop() {
            
            guard cur != destination else {
                return true
            }
            
            for edge in graph[cur, default: []] where !visited.contains(edge) {
                stack.push(edge)
                visited.insert(edge)
            }
        }
        
        return false
    }
}
