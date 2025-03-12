// XIV = 14 = 10 + 1 - 5
// MCMXCIV = 1994 = 1000 + -1 * (100 - 1000) + -1 * (10 - 100) + -1 *(1 - 5)
// MCMXCIV = 1994 = 1000 + 100 - 1000 + -1 * (10 - 100) + -1 *(1 - 5)
class Solution {
  int romanToInt(String s) {
    Map<String, int> table = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    };
    int integer = table[s[0]]!;
    for(int i = 1; i < s.length; i++) {    
        var c = s[i]; 
        var previousChar = s[i-1];
        if(table[previousChar]! >= table[c]!) {
            integer += table[c]!;
        } else {
            integer = integer - table[previousChar]! + (table[c]! - table[previousChar]!);
        }                    
    }
    return integer;    
  }
}
