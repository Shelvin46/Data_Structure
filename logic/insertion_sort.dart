import 'largest_array.dart';

void main() {
  List<int> values = [6, 4, 78, 8, 2, 54, 8, 9];
  insertionSort(values);
}

void insertionSort(List<int> values) {
  for (int i = 1; i <= values.length - 1; i++) {
    int current = values[i];
    int j = i - 1;

    while (j >= 0 && values[j] > current) {
      values[j + 1] = values[j];
      j--;
    }
    values[j + 1] = current;
  }
  print(values);
}
