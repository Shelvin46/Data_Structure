import 'dart:collection';

void main(List<String> args) {
  List<int> arr = [1, 2, 2, 1, 1, 3];
  print(Solution().uniqueOccurrences(arr));
}

class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> map = {};
    for (var element in arr) {
      map[element] = (map[element] ?? 0) + 1;
    }
    for (var key in map.keys) {
      if (map[key] == 1) {
        return true;
      }
    }
    return false;
  }
}
