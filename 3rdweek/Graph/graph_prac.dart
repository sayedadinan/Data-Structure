class Graph {
  List<int> list = [];
  Map<int, List<int>> store = {};
  addvertex(int val) {
    store.putIfAbsent(val, () => []);
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

  isnertions(int vertex, int edge, bool isbidiriction) {
    if (!store.containsKey(vertex)) {
      addvertex(vertex);
    }
    if (!store.containsKey(edge)) {
      addvertex(edge);
    }
    store[vertex]?.add(edge);
    if (isbidiriction) {
      store[edge]?.add(vertex);
    }
  }

  deletion(int vertex) {
    store.remove(vertex);
    store.values.forEach((element) => element.remove(vertex));
  }
}
