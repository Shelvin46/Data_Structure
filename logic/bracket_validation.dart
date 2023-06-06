void main() {
  String s = '((';
  print(Solution().isValid(s));
}

class Solution {
  bool isValid(String s) {
    String a = s[0];
    String b = s[s.length - 1];
    print(a);
    print(b);
    if (a == b) {
      return true;
    } else {
      return false;
    }
  }
}
