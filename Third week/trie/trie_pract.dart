import 'dart:collection';

class Trienode {
  Map<dynamic, Trienode> children = HashMap();
  bool isendofword = false;
}

class Trie {
  Trienode root = Trienode();
  insert(String word) {
    Trienode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current.children.putIfAbsent(char, () => Trienode());
      current = current.children[char]!;
    }
    current.isendofword = true;
  }
}
