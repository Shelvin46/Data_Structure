void main(List<String> args) {
  List<int> digits = [4, 3, 2, 1];
  print(Solution().plusOne(digits));
  // stdout.write('Enter input: ');
  // String input = stdin.readLineSync()!;
  // List<String> stringValues = input.split(' ');
  // List<int> values = stringValues.map(int.parse).toList();
  // String strVal = "";
  // for (var element in values) {
  //   strVal = "$strVal$element";
  // }
  // int? val;
  // val = int.parse(strVal);
  // val = val + 1;
  // String plusValue = val.toString();

  // List<int> array = [];
  // for (var i = 0; i < plusValue.length; i++) {
  //   array.add(int.parse(plusValue[i]));
  // }
  // print(array);
}

class Solution {
  List<double> plusOne(List<int> digits) {
    double value = double.parse(digits.join(''));
    print(value);
    double add = value + 1;
    String string = add.toString();
    List<double> finalList = [];
    for (var i = 0; i < string.length; i++) {
      finalList.add(double.parse(string[i]));
    }
    return finalList;
    // print(add);
  }
}
