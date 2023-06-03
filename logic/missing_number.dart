void main(List<String> args) {
  List<int> nums = [9, 6, 4, 2, 3, 5, 7, 0, 1];
  print(Solution().missingNumber(nums));
}

class Solution {
  int missingNumber(List<int> nums) {
    int a = 0;
    nums.sort();
    print(nums);
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] + 1 != nums[i + 1]) {
        a = nums[i] + 1;
      }
    }
    return a;
  }
}
