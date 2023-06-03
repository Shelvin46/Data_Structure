void main() {
  print(factorial(4));
}

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1; // Base case: factorial of 0 or 1 is 1
  } else {
    print(n);
    return n * factorial(n - 1); // Recursive case

  }
}
