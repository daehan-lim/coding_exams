class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    final root1Leaves = getLeafs(root1!, []);
    final root2Leaves = getLeafs(root2!, []);

    if (root1Leaves.length != root2Leaves.length) {
      return false;
    }

    for (int i = 0; i < root1Leaves.length; i++) {
      if (root1Leaves[i] != root2Leaves[i]) {
        return false;
      }
    }

    return true;
  }

  List<int> getLeafs(TreeNode root, List<int> leafs) {
    if (root.left == null && root.right == null) {
      return [...leafs, root.val];
    }
    return [...leafs, ...getLeafs(root.left!, leafs), ...getLeafs(root.right!, leafs),
    ];
  }
}
