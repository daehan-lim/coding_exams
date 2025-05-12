import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int maxArea = -1;
    int left = 0, right = height.length - 1;
    while (left < right) {
      int area = min(height[left], height[right]) * (right - left);
      if (area > maxArea) {
        maxArea = area;
      }
      if (height[left] >= height[right]) {
        right--;
      } else {
        left++;
      }
    }
    return maxArea;
  }
}
