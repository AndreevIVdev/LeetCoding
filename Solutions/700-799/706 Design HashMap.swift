class MyHashMap {
    
    var dic: [Int: Int] = [:]

    init() {}
    
    func put(_ key: Int, _ value: Int) {
        dic[key] = value
    }
    
    func get(_ key: Int) -> Int {
        dic[key] ?? -1
    }
    
    func remove(_ key: Int) {
        dic[key] = nil
    }
}
