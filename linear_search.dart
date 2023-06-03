void main(List<String> args) {
  List<int> values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int find = 5;
  int result = linearSearch(values, find);
  if (result == 0) {
    print("Element not found.");
  } else {
    print("Element found at index $result");
  }
  List resu = oddNumber(values);
  for (var i = 0; i < resu.length; i++) {
    print(resu[i]);
  }
}

int linearSearch(List<int> array, int x) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] == x) {
      return array[i];
    }
  }
  return 0;
}

List<int> oddNumber(List<int> array) {
  List<int> val = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i].isOdd) {
      val.add(array[i]);
    }
  }
  return val;
}
