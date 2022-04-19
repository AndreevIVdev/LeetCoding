class Solution {
    private var arr: [Int] = []
    func recoverTree(_ root: TreeNode?) {
        fill(root)
        arr = arr.sorted()
        recover(root)
    }
    
    func recover(_ root: TreeNode?) {
        guard let root = root else { return }
        
        recover(root.left)
        root.val = arr.removeFirst()
        recover(root.right)
    }
    
    func fill(_ root: TreeNode?) {
        guard let root = root else { return }
        
        fill(root.left)
        arr.append(root.val)
        fill(root.right)
    }
}
