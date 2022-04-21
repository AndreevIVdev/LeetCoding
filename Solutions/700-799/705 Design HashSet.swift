class MyHashSet {
    var set = Set<Int>()
    init() {}
    func add(_ key: Int) {
        set.insert(key)
    }
    
    func remove(_ key: Int) {
        set.remove(key)
    }
    
    func contains(_ key: Int) -> Bool {
        set.contains(key)
    }
}

