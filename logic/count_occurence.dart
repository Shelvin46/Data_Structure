void main(List<String> args) {
  String a = "ANNA";
  int count = 0;
  for (var i = 0; i < a.length; i++) {
    if (a[i] == "A") {
      count = count + 1;
    }
  }
  print(count);
}
