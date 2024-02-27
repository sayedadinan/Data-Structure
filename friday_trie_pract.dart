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

  findAllPrefixes(String prefix) {
    List<String> results = [];
    Trienode? current = root;
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!current!.children.containsKey(char)) {
        return results;
      }
      current = current.children[char];
    }
    findAllWord(current!, prefix, results);
    return results;
  }

  void findAllWord(Trienode node, String prefix, List<String> results) {
    if (node.isendornot) {
      results.add(prefix);
    }
    for (var entry in node.children.entries) {
      String char = entry.key;
      Trienode childNode = entry.value;
      findAllWord(childNode, prefix + char, results);
    }
  }

  List<String> findval(String word) {
    List<String> result = [];
    Trienode? node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node!.children.containsKey(char)) {
        return result;
      }
      node = node.children[char];
    }
    findall(node!, word, result);
    return result;
  }

  findall(Trienode node, String word, List<String> result) {
    if (node.isendornot) {
      result.add(word);
    }
    for (String char in node.children.keys) {
      findall(node.children[char]!, word + char, result);
    }
  }

  findspec(String word) {
    List<String> result = [];
    Trienode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        return result;
      }
      current = current.children[char]!;
    }
    findever(current, word, result);
    return result;
  }

  findever(Trienode node, String currentword, List<String> result) {
    if (node.isendornot) {
      result.add(currentword);
    }
    for (String char in node.children.keys) {
      findever(node.children[char]!, currentword + char, result);
    }
  }

  findvals(String word) {
    List<String> store = [];
    Trienode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        return store;
      }
      current = current.children[char]!;
    }
    findmain(current, word, store);
    return store;
  }

  findmain(Trienode node, String word, List<String> store) {
    if (node.isendornot) {
      store.add(word);
    }
    for (String char in node.children.keys) {
      findmain(node.children[char]!, word + char, store);
    }
  }

  serch(String word) {
    List<String> store = [];
    Trienode current = root;
    for (int i = 0; i < store.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        return store;
      }
      current = current.children[char]!;
    }
    searchful(word, current, store);
    return store;
  }

  searchful(String word, Trienode node, List<String> store) {
    if (node.isendornot) {
      store.add(word);
    }
    for (String char in node.children.keys) {
      searchful(word + char, node.children[char]!, store);
    }
  }
}

void main() {
  Trie value = Trie();
  // value.insert('adnan');
  value.insert('adidas');
  value.insert('adsas');
  value.insert('ajama');
  value.insert('adhil');
  value.insert('adnan');
  print(value.serch('a'));
}
