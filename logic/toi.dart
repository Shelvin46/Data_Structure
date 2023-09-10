void main() {
  List<int> array1 = [2, 5, 6, 8, 11];
  List<int> array2 = [3, 6, 7, 9, 11, 30];
  // List<int> array3 = [2, 3, 5, 6, 6, 7, 8, 9, 11, 11, 30];
  List<int> array3 = [];
  array3.addAll(array1);
  array3.addAll(array2);
  array3.sort();
  print(array3);
  for (var i = 0; i < array3.length; i++) {
    for (var j = i + 1; j < array3.length - i - 1; i++) {
      if (array3[i] > array3[j]) {
        int temp = array3[i];
        array3[i] = array3[j];
        array3[j] = temp;
      }
    }
  }
  // print(array3.sort());
  // for (var i = 0; i < array1.length; i++) {
  //   array3.add(array1[i]);
  // }
  // for (var i = 0; i < array2.length; i++) {
  //   if(arra)
  // }
  // for(va)
  print(array1);
  print(array2);
  print(array3);
}
