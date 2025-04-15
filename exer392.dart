class Solution {
  bool isSubsequence(String s, String t) {
    int lastIndex = -1;
    List<List<int>> positions = List.generate(26, (_) => []);
    for (int i = 0; i < t.length; i++) {
      positions[t.codeUnitAt(i) - 'a'.codeUnitAt(0)].add(i);
    }
    for (int i = 0; i < s.length; i++) {
      List<int> tIndexesOfLetter = positions[s.codeUnitAt(i) - 'a'.codeUnitAt(0)];
      if (tIndexesOfLetter.isEmpty) {
        return false;
      }
      int foundIndexPosition = tIndexesOfLetter.indexWhere((value) {
        return value > lastIndex;
      });
      if (foundIndexPosition == -1) {
        return false;
      }
      lastIndex = tIndexesOfLetter[foundIndexPosition];
      // tIndexesOfLetter.removeRange(0, foundIndexPosition + 1);
    }
    return true;
  }
}
