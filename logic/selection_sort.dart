void main() {
  List<int> values = [6, 4, 78, 8, 2, 54, 8, 9];
  selectionSort(values);
}

void selectionSort(List<int> values) {
  for (int i = 0; i < values.length; i++) {
    int smallest = i;
    for (int j = i + 1; j < values.length; j++) {
      if (values[smallest] > values[j]) {
        smallest = j;
      }
    }
    int temp = values[i];
    values[i] = values[smallest];
    values[smallest] = temp;
  }
  print(values);
}
