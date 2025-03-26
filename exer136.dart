/*
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
You must implement a solution with a linear runtime complexity and use only constant extra space.

Input: nums = [2,2,1]
Output: 1

Input: nums = [4,1,2,1,2]
Output: 4

Input: nums = [1]
Output: 1
 */

int singleNumber(List<int> nums) {
  Map<int, int> counter = {};
  for (int i = 0; i < nums.length; i++) {
    counter[nums[i]] = (counter[nums[i]] ?? 0) + 1;
  }
  for (var entry in counter.entries) {
    if(entry.value != 2) {
      return entry.key;
    }
  }
  return -1;
}

void main() {
  print(singleNumber([2,2,1])); // 1
  print(singleNumber([4,1,2,1,2])); // 4
  print(singleNumber([1])); // 1
  print(singleNumber([2, 2, 3, 3, 3, 4, 4])); // 3
}
