import 'dart:collection';
import '3rdweek/heaps/heap_sort_pract.dart';

class Binarynode {
  Binarynode? left, right;
  int? val;
  Binarynode(this.val);
}

class Binarysearch {
  Binarynode? root;
  insert(int val) {
    root = insertrec(val, root);
  }

  insertrec(int val, Binarynode? node) {
    if (node == null) {
      return Binarynode(val);
    }
    if (val < node.val!) {
      node.left = insertrec(val, node.left);
    } else if (val > node.val!) {
      node.right = insertrec(val, node.right);
    }
    return node;
  }
}

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
      current = current.children[char];
    }
    current!.isendornot = true;
  }
}

class Heap {
  List<int> store = [];
  shiftdown(List<int> store) {
    int parent = store.length - 1 ~/ 2;
    int endindx = store.length;
    int left = store.length * 2 + 1;
    while (left <= endindx) {
      int right = store.length * 2 + 2;
      int indxtoshift;
      if (right <= endindx && store[right] < store[left]) {
        indxtoshift = right;
      } else {
        indxtoshift = left;
      }
      if (store[parent] > store[indxtoshift]) {
        swapingfun(store, parent, indxtoshift);
        parent = indxtoshift;
        left = store.length * 2 + 1;
      } else {
        return;
      }
    }
  }

  // remove() {
  //   swapingfun(store, 0, store.length - 1);
  //   store.removeAt(0);
  //   shiftdown(0);
  // }
}

class Graph {
  Map<dynamic, List<int>> store = {};
  bfs(int vertex) {
    List<int> visited = [];
    List<int> queue = [];
    visited.add(vertex);
    queue.add(vertex);
    while (queue.isNotEmpty) {
      int current = queue.removeAt(0);
      for (int i in store[current]!) {
        if (!visited.contains(i)) {
          visited.add(i);
          queue.add(i);
        }
      }
      print(visited);
    }
  }
}
