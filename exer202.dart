/*
Problem
Given a positive integer n, determine whether it eventually becomes 1 through the following process:

Replace the number with the sum of the squares of its digits.
Repeat the process with the new number.
If the number eventually becomes 1, then it is called a happy number.
If it enters a loop and never reaches 1, then it is not a happy number.

Input: n = 19
Output: true
Explanation:
19 → 1² + 9² = 82
82 → 8² + 2² = 68
68 → 6² + 8² = 100
100 → 1² + 0² + 0² = 1

Input: n = 2
Output: false
Explanation:
2 → 2² = 4
4 → 4² = 16
16 → 1² + 6² = 37
37 → 3² + 7² = 58
58 → 5² + 8² = 89
89 → 8² + 9² = 145
145 → 1² + 4² + 5² = 42
42 → 4² + 2² = 20
20 → 2² + 0² = 4
Then the cycle repeats: 4 → 16 → ... → not a happy number
*/
class Solution {
bool isHappy(int n) {
  Set<int> results = {};
  int result = n;
  while (true) {
    result = result.toString().split('').map((x) => int.parse(x) * int.parse(x)).reduce((a, b) => a + b);
    if (result == 1) {
      return true;
    } else if (results.contains(result)) {
      return false;
    } else {
      results.add(result);
    }
  }
}
}
