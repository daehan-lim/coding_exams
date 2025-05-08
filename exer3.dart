class Solution {
  int lengthOfLongestSubstring(String s) {
    int left = 0;
    int maxLen = 0;
    Map<String, int> charIndexes = {};
    
    for (int i = 0; i < s.length; i++) {
      if (charIndexes.containsKey(s[i]) && charIndexes[s[i]]! >= left) {
        left = charIndexes[s[i]]! + 1;
      }

      charIndexes[s[i]] = i;
      int length = i - left + 1;
      if (length > maxLen) {
        maxLen = length;
      }
    }
    return maxLen;
  }
}
