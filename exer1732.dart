class Solution {
  int largestAltitude(List<int> gain) {
    int largestAltitude = 0;
    int diff = gain[0];
    if (diff > largestAltitude) {
      largestAltitude = diff;
    }
    for (var i = 1; i < gain.length; i++) {
      diff += gain[i];
      if (diff > largestAltitude) {
        largestAltitude = diff;
      }
    }
    return largestAltitude;
  }
}
