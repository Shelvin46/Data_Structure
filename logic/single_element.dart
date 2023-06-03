void main(List<String> args) {
  int a = 0;
  List<int> nums = [2, 2, 1];
  for (var i = 0; i < nums.length; i++) {
    for (var j = 1; j < nums.length; j++) {
      if (nums[i] != nums[j]) {
        a = nums[i];
      }
    }
  }
  print(a);
}
