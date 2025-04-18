class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root?.val == val) {
      return root;
    } else if (root?.left == null && root?.right == null) {
      return null;
    }

    if (val < root!.val) {
      return searchBST(root.left, val);
    } else {
      return searchBST(root.right, val);
    }
  }
}
