/*
Given an array nums of size n, return the majority element.
The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

Input: nums = [3,2,3]
Output: 3

Input: nums = [2,2,1,1,1,2,2]
Output: 2
 */

int majorityElement(List<int> nums) {
  Map<int, int> counter = {};
  for (int i = 0; i < nums.length; i++) {
    counter[nums[i]] = (counter[nums[i]] ?? 0) + 1;
    if (counter[nums[i]]! >= (nums.length / 2).ceil()) {
      return nums[i];
    }
  }
  return -1;
}

/*int majorityElement2(List<int> nums) {
  var count = 1;
  if (nums.length == 1) {
    return nums[0];
  }
  nums.sort();
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] == nums[i-1]) {
      count++;
      if (count >= (nums.length / 2).ceil()) {
        return nums[i];
      }
    } else {
      count = 1;
    }
  }
  return -1;
}*/

void main() {
  print(majorityElement([3, 2, 3]));
  print(majorityElement([2,2,1,1,1,2,2]));
}
