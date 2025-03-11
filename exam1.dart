// [2, 7, 11, 15], 9 -> [2, 7]
// [2, 4, 6, 8, 2, 3], 8 -> [6, 2]

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // Brute force approach
    for(int i = 0; i < nums.length; i++) {
        for (int j = i + 1; j < nums.length; j++) {
            if(nums[i] + nums[j] == target) {
                return [i, j];
            }
        }
    }
    // More efficient approach
    Map<int, int> past_nums = {};    
    for(int i = 0; i < nums.length; i++) {        
        var difference = target - nums[i];        
        if(past_nums.containsKey(difference)) {
            return [past_nums[difference] ?? -1, i];
        }
        past_nums[nums[i]] = i;
    }
    return [];
  }
}
