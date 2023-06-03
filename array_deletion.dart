void main(List<String> args) {
  List<int> values = [1, 2, 3, 4, 5, 3, 3];
  int a = 3;
  for (var i = 0; i < values.length - 1; i++) {
    if (values[i] == a) {
      for (var j = i; j < values.length - 1; j++) {
        int temp = values[j];
        values[j] = values[j + 1];
        values[j + 1] = temp;
      }
    }
    values.length--;
    // i--;
  }
  print(values);
}
