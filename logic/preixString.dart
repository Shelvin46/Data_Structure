void main() {
  List<String> stringArray = ["flower", "flow", "flight"];
  String prefix = longestCommonPrefix(stringArray);
  print(prefix);
}

String longestCommonPrefix(List<String> strs) {
  String firstString = strs[0];
  for (var word in strs) {
    while (!word.startsWith(firstString)) {
      firstString = firstString.substring(0, firstString.length - 1);
    }
  }
  return firstString;
}
