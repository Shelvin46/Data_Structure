// import 'logic/largest_array.dart';

void main(List<String> args) {
  List<int> values = [5, 0, 3, 0, 12];
  for (var i = 0; i < values.length - 1; i++) {
    for (var j = i + 1; j < values.length; j++) {
      if (values[i] == 0) {
        values[i] = values[i] + values[j];
        values[j] = values[i] - values[j];
        values[i] = values[i] - values[j];
      } else {
        break;
      }
    }
  }
  print(values);
}
