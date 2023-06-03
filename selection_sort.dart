
void main(List<String> args) {
  List<int> values = [30, 2, 41, 56, 12, 11, 22, 41];
  for (var i = 0; i < values.length - 1; i++) {
    for (var j = i + 1; j < values.length; j++) {
      if (values[i] > values[j]) {
        int temp = 0;
        temp = values[i];
        values[i] = values[j];
        values[j] = temp;
      }
    }
  }
  for (var i = 0; i < values.length; i++) {
    print(values[i]);
  }
}
//selection sort