class Solution {
  void moveZeroes(List<int> nums) {
    int lastIndex = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        int lastIndexNum = nums[lastIndex];
        nums[lastIndex] = nums[i];
        lastIndex++;
        if (lastIndexNum == 0) {
          nums[i] = 0;
        }
      }
    }
  }
}
