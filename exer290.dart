class Solution {
  bool wordPattern(String pattern, String s) {
    final words = s.split(' ');
    if (pattern.length != words.length) {
      return false;
    }
    Map<String, String> mapPToW = {pattern[0]: words[0]};
    Map<String, String> mapWToP = {words[0]: pattern[0]};
    for (int i = 1; i < pattern.length; i++) {
      if ((mapPToW.containsKey(pattern[i]) && mapPToW[pattern[i]] != words[i]) ||
          (mapWToP.containsKey(words[i]) && mapWToP[words[i]] != pattern[i])) {
        return false;
      }
      mapPToW[pattern[i]] = words[i];
      mapWToP[words[i]] = pattern[i];
    }
    return true;
  }
}
