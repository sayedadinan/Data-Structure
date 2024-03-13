import 'dart:collection';

class Trienode {
  Map<dynamic, Trienode> children = HashMap();
  bool isEndOfWord = false;
}

class Trie {
  Trienode root = Trienode();
  // String endsymbol = '*';

  insert(String word) {
    Trienode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current.children.putIfAbsent(char, () => Trienode());
      current = current.children[char]!;
    }
    current.isEndOfWord = true;
  }

  bool search(String word) {
    Trienode node = root;
    for (String char in word.split('')) {
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return node.isEndOfWord;
  }

  contains(String str) {
    Trienode? node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node!.children.containsKey(letter)) {
        return false;
      }
      node = node.children[letter];
    }
    return true;
  }

  // contains(String str) {}
}

void main() {
  Trie value = Trie();
  value.insert('adnan');
  print(value.search('a'));
}
