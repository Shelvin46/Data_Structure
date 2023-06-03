void main() {
  List<int> array = [1, 2, 4, 2, 5, 6, 1, 6, 5, 1, 1, 1, 2, 2, 2];
  uniqueElement(array);
}

void uniqueElement(List<int> array) {
  Map<int, int> value = {};
  int i = 0;
  for (int v in array) {
    value[v] = (value[v] ?? i) +
        1; // here we checking the value of value[v] key  is null if it is null we setting the value is one.
  }
  for (int key in value.keys) {
    if (value[key] == 1) {
      print(key);
    }
  }
}
