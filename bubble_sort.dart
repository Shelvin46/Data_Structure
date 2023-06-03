void main(List<String> args) {
  List<int> values = [30, 2, 41, 56, 12, 11, 22, 41];
  for (var i = 0; i < values.length; i++) {
    for (var j = 0; j < values.length - 1; j++) {
      if (values[j] > values[j + 1]) {
        int temp = 0;
        temp = values[j + 1];
        values[j + 1] = values[j];
        values[j] = temp;
      }
    }
  }
  print(values);
}
