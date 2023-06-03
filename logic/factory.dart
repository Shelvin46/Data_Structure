class MyObject {
  final int value;

  // Regular constructor
  MyObject(this.value);

  // // Factory method
  create(int value) {
    if (value > 100) {
      return MyObject(100); // Create with a maximum value of 100
    } else {
      return MyObject(value); // Create with the provided valu   }
    }
  }
}

void main() {
  MyObject obj1 = MyObject(50); // Using the regular constructor
  print(obj1.value); // Output: 50

  MyObject obj2 = MyObject(150);
  ; // Using the factory method
  print(obj2.create(10)); // Output: 100
}
