/*
Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Example 1:

Input: haystack = "sadbutsad", needle = "sad"
Output: 0
Explanation: "sad" occurs at index 0 and 6.

Input: haystack = "leetcode", needle = "leeto"
Output: -1

leetleeto33, leeto -> 4

nothingleeto, leeto -> 7
 */

int strStr(String haystack, String needle) {
  return haystack.indexOf(needle);
  // Alternative solution:
  /*int i = 0;
  int j = 0;
  int firstIndex = -1;
  if (needle.length > haystack.length) {
    return -1;
  }
  while (i < haystack.length) {
    while (j < needle.length) {
      if(i >= haystack.length) {
        return -1;
      }
      if (haystack[i] == needle[j]) {
        if (firstIndex == -1) {
          firstIndex = i;
        }
        if (j == needle.length - 1) {
          return firstIndex;
        }
        i++;
        j++;
      } else {  // different
        firstIndex = -1;
        if (j == 0) {
          i++;
        } else {
          j = 0;
        }
      }
    }
  }
  return -1;*/
}

void main() {
  // var a = 'asff';
  // print(a[0]);
  var result = -1;
  result = strStr('mississippi', 'issip');
  print('Expected: 4, real: $result');

  result = strStr('leetcode', 'leeto');
  print('Expected: -1, real: $result');

  result = strStr('nothingleeto', 'leeto');
  print('Expected: 7, real: $result');

  result = strStr('leetleeto33', 'leeto');
  print('Expected: 4, real: $result');

  result = strStr('sadbutsad', 'sad');
  print('Expected: 0, real: $result');


}
