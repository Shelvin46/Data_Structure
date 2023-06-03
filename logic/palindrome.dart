void main(List<String> args) {
  String value = 'MALAYALAM';
  var obj = Solution();
  print(obj.isPalindrome(value));
}

class Solution {
  bool isPalindrome(String x) {
    String b = "";
    for (var i = x.length - 1; i >= 0; i--) {
      b = b + x[i];
    }
    if (b == x) {
      return true;
    } else {
      return false;
    }
  }
}
