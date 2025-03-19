/*
Given a string s consisting of words and spaces, return the length of the last word in the string.
A word is a maximal substring consisting of non-space characters only.

Input: s = "Hello World"
Output: 5
Explanation: The last word is "World" with length 5.

Input: s = "   fly me   to   the moon  "
Output: 4
Explanation: The last word is "moon" with length 4.
Example 3:

Input: s = "luffy is still joyboy"
Output: 6
Explanation: The last word is "joyboy" with length 6.
 */

int lengthOfLastWord(String s) {
  // return s.trim().split(' ').last.length; // 1 ms Beats 70%; Memory 148.21 MB Beats 65.94%
  // Manual solution
  var i = 0;
  var length = 0;
  while (i < s.length) {
    if (s[i] == ' ') {
      i++;
      continue;
    }
    int j = i;
    while (j < s.length && s[j] != ' ') {
      j++;
      continue;
    }
    length = j - i;
    if (j >= s.length - 1) {
      return length;
    }
    i = j + 1;
  }
  return length; // 0 ms Beats 100.00%; Memory 146.72 MB Beats 90.58%
}

void main() {
  var result = '';
  print('Expected: 6. Actual: ${lengthOfLastWord('luffy is still joyboy')}');

  print('Expected: 4. Actual: ${lengthOfLastWord('   fly me   to   the moon  ')}');

  print('Expected: 5. Actual: ${lengthOfLastWord('Hello World')}');

}
