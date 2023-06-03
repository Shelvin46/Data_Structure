void main(List<String> args) {
  List<int> values = [1, 15, 6, 3];
  var obj = Solution();
  print(obj.differenceOfSum(values));
}

class Solution {
  int differenceOfSum(List<int> values) {
    int sum = 0;
    for (var i = 0; i < values.length; i++) {
      sum = sum + values[i];
    }
    String letters = '';
    for (var i = 0; i < values.length; i++) {
      letters = letters + values[i].toString();
    }
    int a = 0;
    for (var i = 0; i < letters.length; i++) {
      a = a + int.parse(letters[i]);
    }
    int total;
    total = sum - a;
    return total;
  }
}
