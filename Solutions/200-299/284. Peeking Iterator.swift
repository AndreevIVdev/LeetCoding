class PeekingIterator {
    private var arr: [Int] = []
    private var current: Int = 0
    
    init(_ arr: IndexingIterator<Array<Int>>) {
        arr.forEach { self.arr.append($0) }
    }
    
    func next() -> Int {
        defer {
            current += 1
        }
        return arr[current]
    }
    
    func peek() -> Int {
        arr[current]
    }
    
    func hasNext() -> Bool {
        current < arr.count
    }
}
