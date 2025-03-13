class Solution {
  String longestCommonPrefix(List<String> strs) {
    //return 'flower'.substring(0, 'flower'.length);
    //'flower'.startsWith('fl').toString();
    String first = strs[0];    
    for(int prefixLength = first.length; prefixLength >= 0; prefixLength--) {
        String longestPrefix = first.substring(0, prefixLength);
        if(strs.every((x) => x.startsWith(longestPrefix))) {
            return longestPrefix;
        } 
    }
    return '';
    
    /*String previous = strs[0];
    for(var i = 0; i < strs.length; i++) {
        String current = strs[i];
        for(var j = 0; j < current.length; j++) {
            if(j < previous.length && current[j] == previous[j]) {
                longestPrefix += current[j];
            } else {
                break;
            }
        }
    }*/
    //return longestPrefix;
  }
}
