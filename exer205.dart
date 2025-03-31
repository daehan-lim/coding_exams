class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String, String> mapSToT = {};
    Map<String, String> mapTToS = {};
    for(int i = 0; i < s.length; i++) {
        String c1 = s[i];
        String c2 = t[i];
        if ((mapSToT[c1] != null && mapSToT[c1] != c2) || 
           (mapTToS[c2] != null && mapTToS[c2] != c1)) {
            return false;
        }
        mapSToT[c1] = c2;
        mapTToS[c2] = c1;
    }
    return true;
  }
}
