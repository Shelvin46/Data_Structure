void main(List<String> args) {
  List<int> array = [1, 2, 3, 4];
  var obj = Solution();
  obj.arrayProblem(array);
}

class Solution {
  void arrayProblem(List<int> values) {
    //[1,2,3,4]
    List<int> nextArray = [];

    for (var i = 0; i < values.length; i++) {
      int sum = 0;
      if (i == 0) {
        nextArray.add(values[i]);
      } else {
        for (var j = i; j >= 0; j--) {
          sum = sum + values[j];
        }
        nextArray.add(sum);
      }
    }
    print(nextArray);
  }
}
