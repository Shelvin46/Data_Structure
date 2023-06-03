// import 'dart:js_util';

void main(List<String> args) {
  List<int> values = [1, 2, 3, 4, 4, 3, 2, 1];
  Solution().hasGroupsSizeX(values);
}

class Solution {
  void hasGroupsSizeX(List<int> deck) {
    Set<int> products = {};
    int count = 0;
    products.addAll(deck);
    for (var i = 0; i < deck.length; i++) {
      if (products.contains(deck[i])) {
        count++;
      }
    }

    // for (var i = 0; i < products.length; i++) {
    //   for (var j = 0; j < deck.length; j++) {
    //     if (products[i] == deck[j]) {}
    //   }
    // }

    print(products);
  }
}
