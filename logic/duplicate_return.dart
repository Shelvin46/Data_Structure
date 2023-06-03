// import 'dart:html';

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 1];
  var obj = Solution();
  print(obj.containsDuplicate(nums));
}

class Solution {
  Set<int> values = {};
  bool containsDuplicate(List<int> nums) {
    print(values);
    for (var i = 0; i < nums.length; i++) {
      values.add(nums[i]);
    }
    if (values.length == nums.length) {
      return false;
    } else {
      return true;
    }
  }
}
