void main(List<String> args) {
  print(checking(27));
}

bool checking(int n) {
  int value = 3;
  int sum = 0;
  int flag = 0;

  for (var i = 0; i < n ~/ 3; i++) {
    sum = sum + value * value;
    if (sum == n) {
      flag = 1;
    }
  }
  if (flag == 1) {
    return true;
  } else {
    return false;
  }
}
