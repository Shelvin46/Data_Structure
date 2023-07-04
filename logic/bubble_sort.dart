void main() {
  List<int> values = [6, 4, 78, 8, 2, 54, 8, 9];
  bubbleSort(values);
}

void bubbleSort(List<int> values) {
  for (int i = 0; i < values.length; i++) {
    for (int j = 0; j < values.length - i - 1; j++) {
      if (values[j] > values[j + 1]) {
        int temp = values[j];
        values[j] = values[j + 1];
        values[j + 1] = temp;
      }
    }
  }
  print(values);
}
