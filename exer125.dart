bool isPalindrome(String s) {
  final sPrime = s.split('').where((x) => RegExp('[a-zA-Z0-9]').hasMatch(x)).toList();
  if (sPrime.isEmpty) {
    return false;
  }
  for (var i = 0; i < (sPrime.length ~/ 2) + 1; i++) {
    if (sPrime[i].toLowerCase() != sPrime[sPrime.length - 1 - i].toLowerCase()) {
      return false;
    }
  }
  return true;
}

void main() {
  print((7 ~/ 2));
  print(isPalindrome('A man, a plan, a canal: Panama'));
  print(isPalindrome('raceacar'));
  print(isPalindrome(' '));
}
