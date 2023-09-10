// void main() {
//
//   print(values.last);
// }

List<String> openList = ['[', '{', '('];
List<String> closeList = [']', '}', ')'];

String check(String myStr) {
  List<String> stack = [];
  for (var i = 0; i < myStr.length; i++) {
    String char = myStr[i];
    if (openList.contains(char)) {
      stack.add(char);
    } else if (closeList.contains(char)) {
      int pos = closeList.indexOf(char);
      if (stack.isNotEmpty && openList[pos] == stack.last) {
        stack.removeLast();
      } else {
        return 'Unbalanced';
      }
    }
  }
  return stack.isEmpty ? 'Balanced' : 'Unbalanced';
}

// Driver code
void main() {
  String a = 'jdfjdbf';
  String string = '{[]{()}}';
  print('$string - ${check(string)}');

  string = '[{}{})(]';
  print('$string - ${check(string)}');

  string = '((()';
  print('$string - ${check(string)}');
  List<int> values = [1, 3, 6, 8, 6];
  // va
}
