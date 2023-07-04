void main() {
  List<int> array = [3, 5, 7, 10, 56, 2, 9];
  print(linearSearching(array, 10));
}

int linearSearching(List<int> array, int value) {
  for (var i = 0; i < array.length; i++) {
    if (value == array[i]) {
      return i;
    }
  }
  return 0;
}
