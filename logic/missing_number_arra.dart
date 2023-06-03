void main() {
  List<dynamic> values = [1, 2, 3, 4, 5, 6, 8, 9];
  dynamic a = missingNumber(values);
  print(a);
}

int missingNumber(List<dynamic> values) {
  dynamic sum = 0;
  for (var i = 0; i < values.length; i++) {
    sum = sum + values[i];
  }
  print(sum);
  dynamic expectedSum = (values.length + 1) * (values.length + 2) ~/ 2;
  return expectedSum - sum;
}
