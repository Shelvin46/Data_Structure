// import 'dart:html';

void main(List<String> args) {
  var obj = Solution();
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];

  obj.rotate(nums, 3);
}

class Solution {
  List<int> values = [];
  int a = 0;
  void rotate(List<int> nums, int k) {
    for (var i = nums.length - 1; i >= 0; i--) {
      values.add(nums[i]);
    }

    for (var i = k - 1; i >= 0; i--) {
      print('hi');
      int temp = values[i];
      values[i] = values[a];
      values[a] = temp;
      a++;
    }
    print(values);
  }
}
