class Heap {
  List<int> store = [];
  buildheap() {
    for (int i = parents(store.length - 1); i >= 0; i--) {
      shifdowns(i);
    }
  }

  shiftdown(int i) {
    int endindx = store.length - 1;
    int left = lefts(i);
    int right = rights(i);
    while (left <= endindx) {
      int indxtoshift;
      if (right <= endindx && store[right] < store[left]) {
        indxtoshift = right;
      } else {
        indxtoshift = left;
      }
      if (store[i] < store[indxtoshift]) {
        swapingfun(store, i, indxtoshift);
        i = indxtoshift;
        left = lefts(i);
      }
    }
  }

  shiftUp(int i) {
    int parentidx = parents(i);
    while (i > 0 && store.elementAt(parentidx) > store.elementAt(i)) {
      swapingfun(store, i, parentidx);
      i = parentidx;
      parentidx = parents(i);
    }
  }

  parents(int i) {
    return (i - 1) ~/ 2;
  }

  lefts(int i) {
    return (i * 2) + 1;
  }

  rights(int i) {
    return (i * 2) + 2;
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  display() {
    for (int i = 0; i < store.length; i++) {
      print(store.elementAt(i));
    }
  }

  insert(int val) {
    store.add(val);
    shiftUp(store.length - 1);
  }

  shifdowns(int i) {
    int end = store.length;
    int left = lefts(i);
    int right = rights(i);
    while (left <= end) {
      int indxshift;
      if (right <= end && store[right] < store[left]) {
        indxshift = right;
      } else {
        indxshift = left;
      }
      if (store[i] < store[indxshift]) {
        swapingfun(store, i, indxshift);
        i = indxshift;
        left = lefts(i);
      }
      break;
    }
  }
}

void main() {
  Heap heap = Heap();
  heap.insert(94);
  heap.insert(64);
  heap.insert(74);
  heap.insert(4);
  heap.insert(24);
  heap.insert(749);
  heap.insert(7);
  heap.display();
}
