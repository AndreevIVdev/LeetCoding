class Solution {
    var vals: [Int] = []
    
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        guard let root = root else {
            return 0
        }
        dfs(root)
        return vals[k - 1]
    }
    
    private func dfs(_ root: TreeNode) {
        if let left = root.left {
            dfs(left)
        }
        
        vals.append(root.val)
        
        
        if let right = root.right {
            dfs(right)
        }
    }
}
