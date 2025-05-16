class Solution {
  int jump(List<int> nums) {
    if (nums.length < 2) return 0; // No jump needed if there's only one element

    int maxReach = 0;
    int jumpsCount = 0;
    int currentEnd = 0; // End of the current jump range

    for (int i = 0; i < nums.length - 1; i++) {
      if (i + nums[i] > maxReach) { // Update the farthest reachable index
        maxReach = i + nums[i];
      }

      if (i == currentEnd) { // Reached the end of the current jump range
        jumpsCount++; // Need to make a jump
        currentEnd = maxReach; // Set new jump range end

        if (currentEnd >= nums.length - 1) { // Already can reach or pass the end
          break;
        }
      }
    }
    return jumpsCount; // Return total number of jumps
  }
}
