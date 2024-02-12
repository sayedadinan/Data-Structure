class Sort {
  List<int> mergesort(List<int> store) {
    if (store.length <= 1) {
      return store;
    }
    int middle = store.length ~/ 2;
    List<int> firsthalf = store.sublist(0, middle);
    List<int> lasthalf = store.sublist(middle);
    return joinfun(mergesort(firsthalf), mergesort(lasthalf));
  }

  List<int> joinfun(List<int> firsthalf, List<int> lasthalf) {
    List<int> valuestoring = List<int>.from(firsthalf + lasthalf);
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < firsthalf.length && j < lasthalf.length) {
      if (firsthalf[i] < lasthalf[j]) {
        valuestoring[k++] = firsthalf[i++];
      } else {
        valuestoring[k++] = lasthalf[j++];
      }
    }
    while (i < firsthalf.length) {
      valuestoring[k++] = firsthalf[i++];
    }
    while (j < lasthalf.length) {
      valuestoring[k++] = lasthalf[j++];
    }
    return valuestoring;
  }
}

void main() {
  Sort value = Sort();
  List<int> store = [7, 4, 166, 32, 11, 0, 444];
  List<int> result = value.mergesort(store);
  print(result);
}
