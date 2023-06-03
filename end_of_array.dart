void main(List<String> args) {
  int numSix = 0;
  List<int> a = [6, 1, 6, 8, 10, 4, 15, 6, 3, 9, 6];
  int b = 6;
  convertList(List<int> values, int etar) {
    for (var i = 0; i < values.length; i++) {
      if (values[i] == 6) {
        // first one six numsix increment
        numSix++;
      } else {
        values[i - numSix] = values[i];
      }
    }
    for (var j = values.length - numSix; j < values.length; j++) {
      values[j] = 6;
      //print(values[j]);

    }
    for (var i = 0; i < values.length; i++) {
      print(values[i]);
    }
  }

  convertList(a, b);
}
