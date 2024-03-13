class Graph {
  Map<dynamic, List<int>> store = {};
  addvertex(int data) {
    store.putIfAbsent(data, () => []);
  }

  insert(int vertex, int edge, bool isbidirection) {
    if (!store.containsKey(vertex)) {
      addvertex(vertex);
    }
    if (!store.containsKey(edge)) {
      addvertex(edge);
    }
    store[vertex]?.add(edge);
    if (isbidirection) {
      store[edge]?.add(vertex);
    }
  }

  void deleteVertex(int vertex) {
    store.remove(vertex);
    store.values.forEach((list) => list.remove(vertex));
  }

  display() {
    for (int x in store.keys) {
      print('$x : ${store[x]!.join(' ')}');
      // for (int y in store[x]!) {
      //   // print('$y ');
      // }
    }
  }

  bfs(int vertex) {
    Set<int> visited = {};
    List<int> queue = [];
    queue.add(vertex);
    visited.add(vertex);
    while (queue.isNotEmpty) {
      int current = queue[0];
      queue.removeAt(0);
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
      print('vertex not found in graph');
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

void main() {
  Graph graph = Graph();
  graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 5, true);
  graph.insert(5, 7, false);
  graph.insert(4, 8, false);
  graph.insert(4, 9, false);
  graph.insert(5, 18, false);
  graph.insert(5, 14, false);
  // graph.deleteVertex(3);
  graph.bfs(3);
  graph.dfs(3);
  // graph.deleteVertex(5);
  graph.display();
}
