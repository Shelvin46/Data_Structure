void main(List<String> args) {
  f(5);
}

f(int n) {
  if (n <= 1) {
    return 1;
  }
  f(n - 1);
  print(n);
  //f(n - 1);
}
