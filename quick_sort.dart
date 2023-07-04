void main(List<String> args) {
  List<int> array = [2, 41, 56, 12, 11, 22, 41];
  List<int> results = quickSort(array);
  for (var i = 0; i < results.length; i++) {
    print(results[i]);
  }
}

List<int> quickSort(List<int> array) {
  quickSortHelper(array, 0, array.length - 1);
  return array;
}

void quickSortHelper(List<int> array, int startIdx, int endIdx) {
  //here the array containing only one element so we cant sort
  print(endIdx);
  if (startIdx >= endIdx) {
    return;
  }
  int pivot = startIdx;
  int leftIdx = startIdx + 1;
  int rightIdx = endIdx;
  while (leftIdx <= rightIdx) {
    if (array[leftIdx] > array[pivot] && array[rightIdx] < array[pivot]) {
      //then we need to swap the elementsb because the leftidx contain larger element compared to pivot element and
      //rightidx element id smaller than pivot element
      swap(array, leftIdx, rightIdx);
      leftIdx++;
      rightIdx--;
    }
    if (array[leftIdx] <= array[pivot]) {
      //here the leftidx value is smaller than pivot value then the position of leftidx will be incremented
      leftIdx++;
    }
    if (array[rightIdx] >= array[pivot]) {
      rightIdx--;
    }
  }
  //when the leftidx is high compared to rightidx then we know the leftidx value is lessthan pivot value and rightidx
  //value is also lessthan pivot value then we will understand the pivot vaue must be placed on that place.
  //for that we need to swap the values
  swap(array, rightIdx, pivot);
  // print(rightIdx);
  quickSortHelper(array, startIdx, rightIdx - 1);
  quickSortHelper(array, rightIdx + 1, endIdx);
}

void swap(List<int> array, int i, int j) {
  int temp = 0;
  temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}
