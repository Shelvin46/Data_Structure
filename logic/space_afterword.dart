void main(List<String> args) {
  String s = "Hello, my name is john";
  print(Solution().countSegments(s));
}

class Solution {
  int countSegments(String s) {
    int count = 0;
    for (var i = 0; i < s.length - 1; i++) {
      if (s[i + 1] == " ") {
        count++;
      } else {}
    }
    return (count + 1);
  }
}
