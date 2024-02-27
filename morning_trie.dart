import 'dart:collection';

class Trienode {
  Map<dynamic, Trienode> children = HashMap();
  bool isendornot = false;
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
    current.isendornot = true;
  }

  search(String word) {
    Trienode current = root;
    List<String> result = [];
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        return result;
      }
      current = current.children[char]!;
    }
    findall(current, result, word);
    return result;
  }

  findall(Trienode current, List<String> store, String word) {
    if (current.isendornot) {
      store.add(word);
    }
    for (String char in current.children.keys) {
      findall(current.children[char]!, store, word + char);
    }
  }
}

void main() {
  Trie tree = Trie();
  tree.insert('adnan');
  tree.insert('asan');
  tree.insert('adsa');
  tree.insert('ajman');
  print(tree.search('a'));
}
