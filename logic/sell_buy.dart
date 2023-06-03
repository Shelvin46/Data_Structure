// import 'dart:svg';

void main(List<String> args) {
  List<int> values = [7, 1, 5, 3, 6, 4];
  var obj = Solution();
  print(obj.maxProfit(values));
}

class Solution {
  int maxProfit(List<int> prices) {
    int a = prices[0];
    int b = 0;
    for (var i = 1; i < prices.length; i++) {
      if (a > prices[i]) {
        a = prices[i];
        b = i;
      }
    }

    int large = a;
    if (b == prices.length - 1) {
      return 0;
    } else {
      for (var i = b; i < prices.length; i++) {
        if (prices[i] > large) {
          large = prices[i];
        }
      }
      // print(large);
      // print(prices.length);
      print(prices[prices.length - 1]);
      return large - a;
    }
  }
}
