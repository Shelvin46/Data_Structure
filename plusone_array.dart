void main(List<String> args) {
  List<int> values = [1, 2, 3];
  List<int> plusOne(List<int> digits) {
    int a = digits.last;
    digits.remove(a);
    digits.add(a + 1);
    return digits;
  }

  List<int> results = plusOne(values);
  for (var i = 0; i < results.length; i++) {
    print(results[i]);
  }
}
/*Example 1:

Input: digits = [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
Incrementing by one gives 123 + 1 = 124.
Thus, the result should be [1,2,4].*/