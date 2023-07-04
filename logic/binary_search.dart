void main() {
  List<int> array = [3, 4, 6, 8, 10, 45, 78];
  print(binarySearch(array, 10));
}

int binarySearch(List<int> array, int value) {
  int left = 0;
  int right = array.length - 1;
  while (left <= right) {
    int middle = (left + right) ~/ 2;
    if (array[middle] == value) {
      return middle;
    } else if (value < array[middle]) {
      right = middle - 1;
    } else if (value > array[middle]) {
      left = middle + 1;
    }
  }
  return 0;
}
