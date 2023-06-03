void main(List<String> args) {
  List<String> word1 = ["ab", "c"];
  List<String> word2 = ["a", "bc"];
  print(Solution().arrayStringsAreEqual(word1, word2));
}

class Solution {
  bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
    String a = '';
    String b = '';
    for (var i = 0; i < word1.length; i++) {
      a = a + word1[i];
    }
    print(a);
    for (var i = 0; i < word2.length; i++) {
      b = b + word2[i];
    }
    print(b);
    if (a == b) {
      return true;
    } else {
      return false;
    }
  }
}
