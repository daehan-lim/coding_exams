class Solution {
List<String> summaryRanges(List<int> nums) {
  if (nums.isEmpty) {
    return [];
  }
  List<String> ranges = [nums[0].toString()];
  for (var i = 1; i < nums.length; i++) {
    if (nums[i] == nums[i-1] + 1) {
      if (i < nums.length - 1 && nums[i+1] == nums[i] + 1) {
        continue;
      }
      ranges.last += '->${nums[i].toString()}';
    } else {
      ranges.add(nums[i].toString());
    }
  }
  return ranges;
}
}
