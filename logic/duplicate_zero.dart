import 'dart:math';

void main(List<String> args) {
  List<int> values = [1, 0, 2, 3, 0, 4, 5, 0];
  Solution().duplicateZeros(values);
}

class Solution {
  List<int> array = [];

  void duplicateZeros(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] == 0) {
        arr.insert(i + 1, 0);
        i + 2;
        arr.removeAt(arr.length - 1);
      }
    }

    print(arr.toString());
  }
}
