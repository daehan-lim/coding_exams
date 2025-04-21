class Solution {
  int pivotIndex(List<int> nums) {
    final int n = nums.length;
    List<int> prefixSum = List.filled(n + 1, 0);
    for (int i = 0; i < n; i++) {
        prefixSum[i + 1] = prefixSum[i] + nums[i];
    }
    final int total = prefixSum[n];

    for (int i = 0; i < n; i++) {
        final int leftSum = prefixSum[i];
        final int rightSum = total - prefixSum[i + 1];
        if (leftSum == rightSum) {
            return i;
        }
    }
    return -1;
  }
}
