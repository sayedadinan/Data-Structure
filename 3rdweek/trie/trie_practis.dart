import 'dart:collection';

class Trienode {
  Map<dynamic, Trienode> children = HashMap();
  bool isendornot = false;
  String? value;
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

  search(String word, String value) {
    Trienode node = root;
    for (int i = 0; i < word.length; i++) {
      String letter = word[i];
      if (!node.children.containsKey(letter)) {
        return null;
      }
      node = node.children[letter]!;
    }
    if (node.isendornot) {
      return node.value; // Return the value associated with the word if found
    } else {
      return 'not found';
    }
  }

  List<String> prefixsearch(String prefix) {
    List<String> results = [];
    Trienode node = root;
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!node.children.containsKey(char)) {
        return results;
      }
      node = node.children[char]!;
    }
    prefhelp(node, prefix, results);
    return results;
  }

  prefhelp(Trienode node, String currentPrefix, List<String> results) {
    if (node.isendornot) {
      results.add(currentPrefix);
    }
    for (String char in node.children.keys) {
      prefhelp(node.children[char]!, currentPrefix + char, results);
    }
  }
}

void main() {
  Trie value = Trie();
  value.insert('adnan');
  value.insert('adsan');
  value.insert('ajman');
  value.insert('jasir');
  print(value.prefixsearch('a'));
}
