import 'dart:collection';

class Trienode {
  Map<dynamic, Trienode> children = HashMap();
  bool isendornot = false;
}

class Trie {
  Trienode? root = Trienode();
  insert(String word) {
    Trienode? current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current!.children.putIfAbsent(char, () => Trienode());
      current = current.children[char]!;
    }
    current!.isendornot = true;
  }

  search(String word) {
    Trienode? current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current!.children.containsKey(char)) {
        return false;
      }
      current = current.children[char];
    }
    return true;
  }
}

class Trieagainnode {
  Map<dynamic, Trieagainnode> children = HashMap();
  bool isendornot = false;
}

class Trieagain {
  Trieagainnode? root;
  insert(String word) {
    Trieagainnode? current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current!.children.containsKey(char)) {
        current.children.putIfAbsent(char, () => Trieagainnode());
        current = current.children[char];
      }
    }
    current!.isendornot = true;
  }

  search(String word) {
    Trieagainnode? current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current!.children.containsKey(char)) {
        return false;
      }
      current = current.children[char];
    }
    return true;
  }
}
