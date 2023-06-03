void main(List<String> args) {
  List<int> nums1 = [1, 2, 3];
  List<int> nums2 = [2, 4, 6];

  print(Solution().findDifference(nums1, nums2));
}

class Solution {
  List<int> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> set = {};
    for (var i = 0; i < nums1.length; i++) {
      for (var j = 0; j < nums2.length; j++) {
        if (nums1[i] != nums2[j]) {
          set.add(nums1[i]);
        } else {
          break;
        }
      }
    }
    List<int> list = set.toList();
    return list;
  }
}
