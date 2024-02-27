class Heap {
  List<int> store = [];

  build() {
    for (int i = (store.length - 1) ~/ 2; i >= 0; i--) {
      shiftdown(i);
    }
  }

  shiftdown(int i) {
    int left = (i * 2) + 1;
    int endidx = store.length - 1;
    while (left <= endidx) {
      int right = (i * 2) + 2;
      int indxtoshift;
      if (right <= endidx && store[right] < store[left]) {
        indxtoshift = right;
      } else {
        indxtoshift = left;
      }
      if (store[i] > store[indxtoshift]) {
        swapingfun(store, i, indxtoshift);
        i = indxtoshift;
        left = (i * 2) + 1;
      } else {
        return;
      }
    }
  }

  shiftup(int i) {
    int parent = (i - 1) ~/ 2;
    while (i > 0 && store[parent] > store[i]) {
      swapingfun(store, i, parent);
      i = parent;
      parent = (i - 1) ~/ 2;
    }
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  insert(int val) {
    store.add(val);
    shiftup(store.length - 1);
  }

  remove() {
    swapingfun(store, 0, store.length - 1);
    store.removeAt(store.length - 1);
    shiftdown(0);
  }

  display() {
    for (int i = 0; i < store.length; i++) {
      print(store[i]);
    }
  }
}

void main() {
  Heap heap = Heap();
  // heap.build();
  heap.insert(23);
  heap.insert(13);
  heap.insert(33);
  heap.insert(3);
  heap.insert(4);
  heap.remove();
  heap.display();
}
