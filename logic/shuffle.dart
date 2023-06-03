void main(List<String> args) {
  String s = "abcd";
  String t = "abcde";
  print(Solution().findTheDifference(s, t));
}

class Solution {
  String findTheDifference(String s, String t) {
    String a = '';
    Set<String> set = {};
    for (var i = 0; i < t.length; i++) {
      set.add(t[i]);
    }
    for (var i = 0; i < s.length; i++) {
      if (set.contains(s[i])) {
        set.remove(s[i]);
      }
    }
    for (var i = 0; i < set.length; i++) {
      a = a + set.elementAt(i);
    }
    return a;
  }
}
