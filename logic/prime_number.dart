void main() {
  for (int number = 1; number <= 10; number++) {
    if (isPrime(number)) ;
  }
}

bool isPrime(int number) {
  if (number <= 2) {
    return true;
  }
  for (int i = 2; i <= number; i++) {
    if (number % 2 == 0) {
      return false;
    }
  }
  return true;
}
