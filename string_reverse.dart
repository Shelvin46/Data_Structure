
void main(List<String> args) {
  List<String> array = [];
  String res = "";
  String value = "Rejin";
  for (var i = 0; i < value.length; i++) {
    array.add(value[i]);
  }
  while (array.length > 0) {
    res = res + array[array.length - 1];
    array.length--;
  }

  print(res);
}
