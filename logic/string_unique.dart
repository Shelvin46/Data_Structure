void main(List<String> args) {
  String char = 'abcbad';
  for (var i = 0; i < char.length; i++) {
    for (var j = i + 1; j < char.length; j++) {
      if (char[i] == char[j]) {
        print(char[i]);
      }
    }
    // print(char[i]);
  }
}
