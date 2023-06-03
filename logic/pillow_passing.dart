void main(List<String> args) {
  print(Solution().passThePillow(4, 5));
}

class Solution {
  int passThePillow(int n, int time) {
    int a = 0;
    for (var i = 1; i < time; i++) {
      if (a < n) {
        a = a + 1;
      } else {
        a = a - 1;
      }
    }
    return a;
  }
}
