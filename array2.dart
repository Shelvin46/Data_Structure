void main(List<String> args) {

  List<int> values = [1, 1, 2];
  int removesDuplicates(List<int> nums) {
   int length=nums.length-1;
  
  for(int i=0;i<length;i++){
      if(nums[i]==nums[i+1]){
          nums.removeAt(i);
         
          length--;
      }
  }
  return nums.length;
  }

  int result = removesDuplicates(values);
  print(result);
}
/*Input: nums = [1,1,2]
Output: 2, nums = [1,2,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).*/