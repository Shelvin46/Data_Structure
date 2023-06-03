void main(List<String> args) {
  int large = 0;
  int second = 0;
  int third = 0;
  List<int> a = [7, 8, 10, 12, 4, 9, 5, 11];
  for (var i = 0; i < a.length; i++) {
    if (a[i] > large) {
      second = large; // second = 0
      large = a[i]; //large=7
    } else if (a[i] > second) {
      third = second;
      second = a[i];
    } else if (a[i] > third) {
      third = a[i];
    }
  }
  print(large);
  print(second);
  print(third);
}
