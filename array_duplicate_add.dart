

void main() {
  var numbers = List.from([1, 2, 3]);
  print(numbers); // Output: [1, 2, 3]
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] == 2) {
      for (var j = numbers.length-1; j <= i; j--) {
        numbers[j + 1] = numbers[j];//1) j+1=3 
      }
    }
    // if (numbers[i] == 2) {
    //   numbers.insert(numbers.elementAt(i), 2);
    // }
    // numbers.length++;
  }

  // int a = numbers.elementAt(1);
  // numbers.insert(a, 1);
  // numbers.add(1);
  // numbers.add(1);
  // numbers.add(1);

  print(numbers); // Output: [1, 2, 3, 4]
}
