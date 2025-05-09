class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) return s;
    List<StringBuffer> rows = List.generate(numRows, (index) => StringBuffer());
    int rowIndex = 0;
    bool zigzagDown = true;
    for (int i = 0; i < s.length; i++) {
      rows[rowIndex].write(s[i]);
      if (zigzagDown) {
        if (rowIndex < numRows - 1) {
          rowIndex++;
        } else {
          rowIndex = numRows - 2;
          zigzagDown = false;
        }
      } else {
        if (rowIndex > 0) {
          rowIndex--;
        } else {
          rowIndex = 1;
          zigzagDown = true;
        }
      }
    }
    return rows.join();
  }
}
