class Solution {
  String gcdOfStrings(String str1, String str2) {
    // int counter = -1;
    String longestPattern = '';
    String short = str2;
    String long = str1;
    if (str2.length > str1.length ) {
      long = str2;
      short = str1;
    }
    for (int i = 0; i < short.length; i++) {
      String pattern = short.substring(0, i + 1);
      // int currentCounter = count(pattern, str1);
      if (isCommonDivisor(pattern, long) && pattern.length > longestPattern.length) {
        // counter = currentCounter;
        longestPattern = pattern;
      }
    }
    return longestPattern;
  }

  bool isCommonDivisor(String pattern, String str1) {
    String afterReplace = str1;
    while (true) {
      String beforeReplace = afterReplace;
      afterReplace = afterReplace.replaceFirst(pattern, '');
      if (afterReplace.length == beforeReplace.length) {
        return false;
      }
      if (afterReplace.isEmpty) {
        return true;
      }
    }
  }
}
