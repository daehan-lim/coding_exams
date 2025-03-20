class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
  if (n == 0) {
    return;
  } else if (m == 0) {
    nums1.clear();
    nums1.addAll(nums2);
  }
  List<int> nums1Copy = [];
  for (int i = 0; i < m; i++) {
    nums1Copy.add(nums1[i]);
  }
  for (int i = 0; i < n; i++) {
    nums1Copy.add(nums2[i]);
  }
  nums1Copy.sort();
  nums1.clear();
  nums1.addAll(nums1Copy);
  }  
}
