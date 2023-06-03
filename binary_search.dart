void main(List<String> args) {
  List<int> values = [3, 4, 6, 9, 10, 15, 18, 20];
  int x = 20;
  int result = binarySearch(values, x);
  print(result);
}

int binarySearch(List<int> array, int target) {
  int startIndex = 0;
  int lastIndex = array.length - 1;
  array.sort();

  while (startIndex <= lastIndex) {
    int middle = (startIndex + lastIndex) ~/ 2;
    if (array[middle.toInt()] == target) {
      return middle;
    } else if (array[middle] > target) {
      lastIndex = middle - 1;
    } else if (array[middle] < target) {
      startIndex = middle + 1;
    }
  }
  return 0;
}
