class Graph {
  Map<dynamic, List<int>> store = {};
  addvertex(int vertex) {
    store.putIfAbsent(vertex, () => []);
  }

  insert(int vertex, int edge, bool isbidiriction) {
    if (!store.containsKey(vertex)) {
      addvertex(vertex);
    }
    if (!store.containsKey(edge)) {
      addvertex(edge);
    }
    store[vertex]!.add(edge);
    if (isbidiriction) {
      store[edge]!.add(vertex);
    }
  }

  bfs(int vertex) {
    List<int> queue = [];
    Set<int> visited = {};
    queue.add(vertex);
    visited.add(vertex);
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

  int findLargestVertex(Map<dynamic, List<int>> graph) {
    int largestVertex = 0;
    graph.keys.forEach((vertex) {
      if (vertex > largestVertex) {
        largestVertex = vertex;
      }
    });

    return largestVertex;
  }

  dfs(int vertex) {
    List<int> visited = [];
    dfshelper(vertex, visited);
    print(visited);
  }

  dfshelper(int vartex, List<int> visited) {
    visited.add(vartex);
    for (int i in store[vartex]!) {
      if (!visited.contains(i)) {
        visited.add(i);
        dfshelper(i, visited);
      }
    }
  }
}
