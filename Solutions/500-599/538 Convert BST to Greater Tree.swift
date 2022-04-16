class Solution {
    private var temp = 0

    private func convert(_ root: TreeNode?) {
        guard let root = root else { return }

        convert(root.right)

        temp += root.val
        root.val = temp

        convert(root.left)
    }
    
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        convert(root)

        return root
    }
}
