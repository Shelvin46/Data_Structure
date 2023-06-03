void main(List<String> args) {
  List<int> nums = [5, 4, 2, 1];
  print(Solution().thirdMax(nums));
}

class Solution {
  int thirdMax(List<int> nums) {
    int a = 0;
    int b = 0;
    int c = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] > a) {
        b = a;
        a = nums[i];
      } else if (nums[i] > b) {
        c = b;
        b = nums[i];
      } else if (nums[i] > c) {
        c = nums[i];
      }
    }
    return c;
  }
}
