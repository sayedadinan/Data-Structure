class Graph {
  Map<dynamic, List<int>> store = {};
  addvertex(int vertex) {
    store.putIfAbsent(vertex, () => []);
  }

  inert(int vertex, int edge, bool isbidirection) {
    if (!store.containsKey(vertex)) {
      addvertex(vertex);
    }
    if (!store.containsKey(edge)) {
      addvertex(edge);
    }
    store[vertex]!.add(edge);
    if (isbidirection) {
      store[edge]!.add(vertex);
    }
  }

  remove(int vertex) {
    if (store.containsKey(vertex)) {
      store.remove(vertex);
      store.values.forEach((element) => element.remove(vertex));
    } else {
      print('there is no vertex');
    }
  }

  bfs(int vertex) {
    Set<int> visited = {};
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
    }
    print(visited);
  }

  dfs(int vertex) {
    if (store.containsKey(vertex)) {
      Set<int> visited = {};
      dfshelper(vertex, visited);
      print(visited);
    } else {
      print('there is no vertex');
    }
  }

  dfshelper(int vertex, Set<int> visited) {
    visited.add(vertex);
    for (int i in store[vertex]!) {
      if (!visited.contains(i)) {
        dfshelper(i, visited);
      }
    }
  }

  display() {
    for (int i in store.keys) {
      print('$i : ${store[i]!.join(' ')}');
    }
  }
}

void main() {
  Graph value = Graph();
  value.inert(3, 4, true);
  value.inert(5, 6, true);
  value.inert(5, 7, false);
  value.inert(5, 8, false);
  value.inert(5, 7, false);
  value.inert(6, 3, false);
  value.display();
  // value.dfs(5);
  value.bfs(5);
}

class Graphagain {
  Map<dynamic, List<int>> store = {};
  addvertex(int vertex) {
    store.putIfAbsent(vertex, () => []);
  }

  insert(int vertex, int edge, bool isbidirection) {
    if (!store.containsKey(vertex)) {
      addvertex(vertex);
    }
    if (!store.containsKey(edge)) {
      addvertex(edge);
    }
    store[vertex]!.add(edge);
    if (isbidirection) {
      store[edge]!.add(vertex);
    }
  }

  remove(int vertex) {
    if (store.containsKey(vertex)) {
      store.values.forEach((element) {
        element.remove(vertex);
      });
    } else {
      print('there is no vertex');
    }
  }

  bfs(int vertex) {
    Set<int> visited = {};
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
    }
    print(visited);
  }

  dfs(int vertex) {
    if (store.containsKey(vertex)) {
      Set<int> visited = {};
      dfshelper(vertex, visited);
      print(visited);
    } else {
      print('there is no vertex');
    }
  }

  dfshelper(int vertex, Set<int> visited) {
    visited.add(vertex);
    for (int i in store[vertex]!) {
      if (!visited.contains(i)) {
        dfshelper(i, visited);
      }
    }
  }
}
