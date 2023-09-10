import '../insertion_sort.dart';

void main() {
  List<int> array = [4, 2, 6, 2, 8, 10, 5];
  print(mergeSort(array));
  Map<String, int> map = {"A": 1, "B": 2, "C": 3, "D": 4};
  List<String> values = map.entries.map((e) {
    return e.key;
  }).toList();
  Map<String, int> map2 = {};
  print(map2);
}

List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  int middle = array.length ~/ 2;
  List<int> leftArray = array.sublist(0, middle);
  List<int> rightArray = array.sublist(middle);
  return merge(mergeSort(leftArray), mergeSort(rightArray));
}

List<int> merge(List<int> leftArray, List<int> rightArray) {
  int leftIndex = 0;
  int rightIndex = 0;
  List<int> result = [];
  while (leftIndex < leftArray.length && rightIndex < rightArray.length) {
    if (leftArray[leftIndex] < rightArray[rightIndex]) {
      result.add(leftArray[leftIndex]);
      leftIndex++;
    } else {
      result.add(rightArray[rightIndex]);
      rightIndex++;
    }
  }
  result.addAll(leftArray.sublist(leftIndex));
  result.addAll(rightArray.sublist(rightIndex));
  return result;
}
