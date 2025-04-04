class Solution {
bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;
  return (s.split('')..sort()).join() == (t.split('')..sort()).join();
}
}
