int tribonacci(int n) {
    final result = [];
    int i = 0;
    while (i <= n) {
      if (i == 0) {
        result.add(0);
      } else if (i == 2 || i == 1) {
        result.add(1);
      } else {
        result.add(result[i-1] + result[i-2] + result[i-3]);
      }
      i++;
    }
    return result.last;
  }
