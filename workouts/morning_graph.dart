class Graph {
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

  bfss(int vertex) {
    List<int> queue = [];
    Set<int> visited = {};
    queue.add(vertex);
    visited.add(vertex);
    while (queue.isNotEmpty) {
      int current = queue.removeAt(0);
      for (int i in store[current]!) {
        if (!visited.contains(i)) {
          queue.add(i);
          visited.add(i);
        }
      }
    }
    print(visited);
  }

  dfss(int vertex) {
    List<int> stores = [];
    dfshelpers(vertex, stores);
    print(stores);
  }

  dfshelpers(int vertex, List<int> stores) {
    stores.add(vertex);
    for (int i in store[vertex]!) {
      if (!stores.contains(i)) {
        stores.add(i);
        dfshelpers(i, stores);
      }
    }
  }

  dfsss(int vertex) {
    List<int> visited = [];
    dfshelperss(vertex, visited);
    print(visited);
  }

  dfshelperss(int vertex, List<int> visited) {
    visited.add(vertex);
    for (int i in store[vertex]!) {
      if (!visited.contains(i)) {
        visited.add(i);
        dfshelperss(i, visited);
      }
    }
  }

  bfsss(int vertex) {
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
    }
    print(visited);
  }
}

class Graphs {}
