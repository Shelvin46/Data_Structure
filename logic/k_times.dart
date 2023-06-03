void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5];
  int k = 3;
  print(Solution().maximizeSum(nums, k));
}

class Solution {
  int maximizeSum(List<int> nums, int k) {
    int sum = 0;
    for (var i = 0; i < k; i++) {
      sum = sum + nums.elementAt(nums.length - 1);
      nums.removeAt(nums.length - 1);
      nums.add(sum);
    }

    return sum;
  }
}
