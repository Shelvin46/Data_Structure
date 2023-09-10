void main() {
  String name = "MANNA";
  SuffixTrie? object = SuffixTrie();
  populateSuffixTree(name, object);
  print(isContain("ANNAN", object));
  a obj = a();
  // List.generate(4, (index), growable: false);
  // obj..display()..remove();
  // List<int> fixedList = List<>;
  // print(fixedList.asMap());
}

class SuffixTrie {
  Map<String, SuffixTrie?> map = {};
}

void populateSuffixTree(String name, SuffixTrie object) {
  for (var i = 0; i < name.length; i++) {
    insertingString(i, name, object);
  }
}

String endSymbol = '*';

void insertingString(int index, String name, SuffixTrie object) {
  for (var i = index; i < name.length; i++) {
    String word = name[i];
    if (!object.map.containsKey(word)) {
      SuffixTrie newNode = SuffixTrie();
      object.map[word] = newNode;
    }
    object = object.map[word]!;
  }
  object.map[endSymbol] = null;
}

bool isContain(String name, SuffixTrie object) {
  for (var i = 0; i < name.length; i++) {
    String word = name[i];
    if (!object.map.containsKey(word)) {
      return false;
    }
    object = object.map[word]!;
  }
  return object.map.containsKey(endSymbol);
}

class a {
  void display() {
    print("khgukasr");
  }

  void remove() {
    print("remove");
  }
}
