import 'dart:io';

void main(List<String> args) {
  var obj = Solution();
  print(obj.commonFactors(12, 6));
}

class Solution {
  int flag = 0;
  int count = 0;
  Set<int> mySet = {};
  int commonFactors(int a, int b) {
    //12.6
    for (var i = 1; i <= b; i++) {
      if (a % i == 0 && b % i == 0) {
        flag++;
      }
    }

    return flag;
  }
}
