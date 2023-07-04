// import 'dart:js_util';

import '../insertion_sort.dart';

void main() {
  List<int> array = [35, 5, 26, 4, 89, 27, 9, 22];
  exampleFunction();
  List items = [3, 2, 5, 6, 80];
  items.forEach((element) async {
    await fun(element);
  });
}

fun(int element) {}
List<int> heapArray = [];

void buildHeap(List<int> array) {
  heapArray = array;
  for (var i = parent(array.length - 1); i >= 0; i--) {
    shiftDown(i);
  }
}

void shiftDown(int currentIdx) {
  int endIdx = heapArray.length - 1;
  int leftIdx = leftChild(currentIdx);
  while (leftIdx <= endIdx) {
    int rightIdx = rightChild(currentIdx);
    int? shiftIdx;
    if (rightIdx <= endIdx && heapArray[rightIdx] < heapArray[leftIdx]) {
      shiftIdx = rightIdx;
    } else {
      shiftIdx = leftIdx;
    }
    if (heapArray[currentIdx] > heapArray[shiftIdx]) {
      int temp = heapArray[currentIdx];
      heapArray[currentIdx] = heapArray[shiftIdx];
      heapArray[shiftIdx] = temp;
      currentIdx = shiftIdx;
      leftIdx = leftChild(currentIdx);
    } else {
      return;
    }
  }
}

void shiftUp(int currentIdx) {
  int parentIdx = parent(currentIdx);
  while (currentIdx > 0 && heapArray[currentIdx] < heapArray[parentIdx]) {
    int temp = heapArray[currentIdx];
    heapArray[currentIdx] = heapArray[parentIdx];
    heapArray[parentIdx] = temp;
    currentIdx = parentIdx;
    parentIdx = parent(currentIdx);
  }
}

void remove() {
  int temp = heapArray[heapArray.length - 1];
  heapArray[heapArray.length - 1] = heapArray[0];
  heapArray[0] = temp;
  heapArray.removeAt(heapArray.length - 1);
  shiftDown(0);
}

void insert(int value) {
  heapArray.add(value);
  shiftUp(heapArray.length - 1);
}

int parent(int i) {
  return (i - 1) ~/ 2;
}

int leftChild(int i) {
  return (2 * i) + 1;
}

int rightChild(int i) {
  return (2 * i) + 2;
}

void exampleFunction({int? t}) {}
