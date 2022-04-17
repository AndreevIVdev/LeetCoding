class Solution {
    var temp: TreeNode?
    
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        temp = TreeNode(Int.min)
        
        let preHead = temp
        inorder(root)
        
        return preHead?.right
    }
    
    func inorder(_ node: TreeNode?) {
        guard let node = node else {
            return
        }
        
        inorder(node.left)
        node.left = nil
        temp?.right = node
        temp = node
        inorder(node.right)
    }
}
