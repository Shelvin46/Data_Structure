void main(List<String> args) {
  List<int> nums = [3, 30, 34, 5, 9];
  var obj = Solution();
  print(obj.largestNumber(nums));
  // print()
}

class Solution {
  String largestNumber(List<int> nums) {
    List<int> reversedList = [];
    String a = "";
    // for (int num in nums) {
    //   digits.addAll(num.toString().split('').map((digit) => int.parse(digit)));
    // }

    reversedList = nums.reversed.toList();
    // print(reversedList);
    for (var i = 0; i < reversedList.length; i++) {
      a = a + reversedList[i].toString();
    }
    return a;
  }
}
