void main(List<String> args) {
  List<int> num1 = [1, 2];
  List<int> num2 = [3];
  findingValue mm;
  List<int> values = [2, 6, 1, 5, 3, 21, 11];

  // List<int> nums1;
  var a = findingValue();
  a.findMedianSortedArrays(num1, num2);
  a.MinimumMaximum(values);
  // a.sorting();
  //  findMedianSortedArrays(num1, num2);
}

class findingValue {
  void findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    for (var i = 0; i < nums2.length - 1; i++) {
      nums1.add(nums2[i]);
    }

    int a = nums1.length - 1 ~/ 2;
    print(a);
    for (var j = 0; j < nums1.length - 1; j++) {
      if (nums1.indexOf(nums1[j]) == a) {
        print(nums1[j]);
      }
    }
  }

  void MinimumMaximum(List<int> values) {
    int a = 0;
    int b = 0;
    for (var i = 0; i < values.length - 1; i++) {
      if (values[i] > a) {
        a = values[i];
      }
    }
    int lowest = values[0];
    for (var i = 1; i < values.length; i++) {
      if (values[i] < lowest) {
        lowest = values[i];
      }
    }
    print(a);
    print(lowest);
  }
}
