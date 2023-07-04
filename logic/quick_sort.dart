import '../array_duplicate_add.dart';
import '../quick_sort.dart';

void main() {}
List<int> quickSort(List<int> array) {
  quickSortHelper(array, 0, array.length - 1);
  return array;
}

quickSortHelper(List<int> array, int startIdx, int endIdx) {
  if (startIdx >= endIdx) {
    return;
  }
  int pivot = startIdx;
  int leftIdx = startIdx + 1;
  int rightIdx = endIdx;
  while (leftIdx <= rightIdx) {
    if (array[leftIdx] > array[pivot] && array[rightIdx] < array[pivot]) {
      swapping(array, leftIdx, rightIdx);
      leftIdx++;
      rightIdx++;
    }
    if (array[leftIdx] < array[pivot]) {
      leftIdx++;
    }
    if (array[rightIdx] > array[pivot]) {
      rightIdx++;
    }
  }
  swapping(array, rightIdx, pivot);
  quickSortHelper(array, startIdx, rightIdx - 1);
  quickSortHelper(array, rightIdx + 1, endIdx);
}

swapping(List<int> array, int leftIdx, int rightIdx) {}
