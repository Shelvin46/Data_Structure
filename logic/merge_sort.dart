void main(List<String> args) {
  List<int> array1 = [5, 3, 7, 2, 2, 9];
  List<int> array2 = [6, 4, 9, 3, 5, 2, 3];
  var array3 = array2 + array1;
  array3.sort();
  print(array3);
}
