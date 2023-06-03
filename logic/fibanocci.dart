void main(List<String> args) {
  int a = 0;
  int b = 1;
  
  print(a);
  print(b);

  for (var i = 0; i < 6; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
