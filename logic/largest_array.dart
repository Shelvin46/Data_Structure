void main() {
  List<int> array = [5, 7, 10, 12, 8, 14];
  largestOfArray(array);
}

void largestOfArray(List<int> array) {
  int a = 0;
  int b = 0;
  for (var i = 0; i < array.length; i++) {
    if (array[i] > a) {
      b = a;
      a = array[i];
    } else if (array[i] > b) {
      b = array[i];
    }
  }
  print(a);
  print(b);
}
