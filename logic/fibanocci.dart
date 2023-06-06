void main(List<String> args) {
  // int a = 0;
  // int b = 1;
  //
  // print(a);
  // print(b);
  //
  // for (var i = 0; i < 6; i++) {
  //   int c = a + b;
  //   print(c);
  //   a = b;
  //   b = c;
  // }
  List<int> fibonacci = [];

  for (int i = 0; i < 6; i++) {
    fibonacci.add(fibonacciNumber(i));
  }

  for (int i = 0; i < fibonacci.length; i++) {
    print(fibonacci[i]);
  }
}

int fibonacciNumber(int n) {
  if (n == 0 || n == 1) {
    return n;
  } else {
    return fibonacciNumber(n - 1) + fibonacciNumber(n - 2);
  }
}
