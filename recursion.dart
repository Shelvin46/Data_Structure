
void main(List<String> args) {
  int CalculateFacctorial(int n) {
    if (n <= 0) {
      return 1;
    } else {
      int result = (n * CalculateFacctorial(n - 1));
      return result;
    }
  }

  int res = CalculateFacctorial(100);
  print(res);
}
