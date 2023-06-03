void main(List<String> args) {
  List<int> values = [0, 0, 3, 0, 12];
  for (var i = 0; i < values.length - 1; i++) {
    for (var j = i + 1; j < values.length; j++) {
      if (values[i] == 0) {
        int temp = 0;
        temp = values[i];
        values[i] = values[j];
        values[j] = temp;
      }
    }
  }
  print(values);

  // int zeroesCount = 0;
  // for (int i = 0; i < values.length; i++) {
  //   if (values[i] == 0) {
  //     zeroesCount++;
  //     continue;
  //   }
  //   if (zeroesCount > 0) {
  //     values[i - zeroesCount] = values[i];
  //   }
  // }

  // for (int i = values.length - zeroesCount; i < values.length; i++) {
  //   values[i] = 0;
  // }
  // print(values);
}

//List<int> val = [1, 2, 3];

