// void main(List<String> args) {
//   List<int> values = [30, 2, 41, 56, 12, 11, 22, 41];
//   for (int i = 1; i < values.length; i++) {
//     int current = values[i];
//     int j = i - 1;
//     while (j >= 0 && values[j] > current) {
//       values[j + 1] = values[j];
//       j--;
//     }
//     values[j + 1] == current;
//   }
//   for (var l = 0; l < values.length; l++) {
//     print(values[l]);
//   }
// }
void main(List<String> args) {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];

  for (int i = 0; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }

    arr[j + 1] = key;
  }
  print('Sorted list :');
  print(arr);
}

//30,2,41,56,12,11,22,41
