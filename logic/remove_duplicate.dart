// import 'dart:js_util';

void main() {
  List<int> values = [5, 7, 6, 7, 10, 5, 1];
  deleteDuplicates(values);
  List<int> valuesZero = [5, 0, 6, 0, 4, 3, 0, 2, 1, 0];
  zeroToEnd(valuesZero);
}

void deleteDuplicates(List<int> values) {
  for (int i = 0; i < values.length - 1; i++) {
    for (int j = i + 1; j < values.length; j++) {
      if (values[i] == values[j]) {
        values.removeAt(j);
      }
    }
  }
  print(values);
}

void zeroToEnd(List<int> valuesZero) {
  for (int i = 0; i < valuesZero.length; i++) {
    for (int j = 0; j < valuesZero.length - 1; j++) {
      if (valuesZero[j] == 0) {
        int temp = valuesZero[j];
        valuesZero[j] = valuesZero[j + 1];
        valuesZero[j + 1] = temp;
      }
    }
  }
  print(valuesZero);
}
