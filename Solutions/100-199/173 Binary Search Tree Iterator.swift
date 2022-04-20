class BSTIterator {
    private var arr: [Int] = []
    
    init(_ root: TreeNode?) {
        fill(root)
        print(arr)
    }
    
    func next() -> Int {
        arr.popLast()!
    }
    
    func hasNext() -> Bool {
        !arr.isEmpty
    }
    
    private func fill(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        
        fill(root.right)
        arr.append(root.val)
        fill(root.left)
    }
}

