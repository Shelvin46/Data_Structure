void main() {
  List<int> array = [1, 5, 7, 1, 8, 7, 4];
  findFrequency(array: array);
}

void findFrequency({required List<int> array}) {
  Map<int, int> map = {};
  for (int i = 0; i < array.length; i++) {
    map[array[i]] = (map[array[i]] ?? 0) + 1;
  }
  print(map);
  int a = 0;
  for (int element in map.keys) {
    if (map[element]! > a) {
      a = map[element]!;
    }
  }
  print(a);
}
