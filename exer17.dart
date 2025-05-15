class Solution {
  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) return [];

    final mapping = {
      '2': 'abc',
      '3': 'def',
      '4': 'ghi',
      '5': 'jkl',
      '6': 'mno',
      '7': 'pqrs',
      '8': 'tuv',
      '9': 'wxyz',
    };

    final combinations = <String>[];

    void generate(int pos, String combo) {
      if (pos == digits.length) {
        combinations.add(combo);
        return;
      }

      final chars = mapping[digits[pos]]!;
      for (var i = 0; i < chars.length; ++i) {
        generate(pos + 1, combo + chars[i]);
      }
    }

    generate(0, '');
    return combinations;
  }
}
