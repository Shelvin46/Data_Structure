void main(List<String> args) {
  List<int> arr = [2, 2, 3, 4];
  print(Solution().findLucky(arr));
}

class Solution {
  int count = 1;
  int findLucky(List<int> arr) {
    for (var i = 0; i < arr.length - 1; i++) {
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          count++;
        }
      }
    }
    return count;
  }
}
