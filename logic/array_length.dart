void main() {
  List<int> array = [];
  addElement(array);
}

void addElement(List<int> array) {
  for (var i = 0; i < 6; i++) {
    if (i % 2 == 0) {
      array.add(0);
    } else {
      array.add(1);
    }
  }
  print(array);
}
