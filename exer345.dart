class Solution {
  String reverseVowels(String s) {
    int i = 0;
    int j = s.length - 1;
    List<String> sArray = s.split('');
    const Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
    while (i < j) {
      if (!vowels.contains(sArray[i])) {
        i++;
      } else if (!vowels.contains(sArray[j])) {
        j--;
      } else {
        final temp = sArray[i];
        sArray[i] = sArray[j];
        sArray[j] = temp;
        i++;
        j--;
      }
    }
    return sArray.join('');
  }
}
