void main() {
  List<int> nums = [0, 2, 1, 5, 3, 4];
  print(Solution().buildArray(nums));
}

class Solution {
  List<int> buildArray(List<int> nums) {
    List<int> array = [];
    for (var i = 0; i < nums.length; i++) {
      array.add(nums.elementAt(nums[i]));
    }
    return array;
  }
}
