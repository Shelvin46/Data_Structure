void main(List<String> args) {
  List<int> values = [1, 0, 1, 1, 1];
  print(Solution().findMaxConsecutiveOnes(values));
}

class Solution {
  int count = 0;
  int findMaxConsecutiveOnes(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        count++;
      } else if (nums[i] == 0) {
        count = 0;
      }
    }
    return count;
  }
}
