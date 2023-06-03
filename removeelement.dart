void main(List<String> args) {
  List<int> values = [0, 1, 2, 2, 3, 0, 4, 2]; //=[0,1,3,0,4,]
  int a = 2;

  int removeElement(List<int> nums, int val) {
    //print(nums.length);
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == val) {
        nums.removeWhere((element) => element == val);       
      }
    }
    return nums.length;
  }
  int result = removeElement(values, a);
  print(result);  
  
}
