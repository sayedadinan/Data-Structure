class Heap {
  List<int> store = [];
  buildheap() {
    for (int i = (store.length - 1) ~/ 2; i >= 0; i--) {
      shiftdown(i);
    }
  }

  shiftdown(int i) {
    int left = (i * 2) + 1;
    int endidx = store.length;
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

  insert(int val) {
    store.add(val);
    shiftup(store.length - 1);
  }

  remove(int val) {
    int indexToRemove = store.indexOf(val);
    if (indexToRemove != -1) {
      swapingfun(store, indexToRemove, store.length - 1);
      store.removeLast();
      shiftdown(indexToRemove);
    }
  }
  // remove(int i) {
  //   swapingfun(store, i, store.length - 1);
  //   store.removeLast();
  //   shiftdown(i);
  //   // shiftup(i);
  // }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  display() {
    for (int i = 0; i < store.length; i++) {
      print(store[i]);
    }
  }

  shiftdn(int i) {
    int left = (i * 2) + 1;
    int endidx = store.length;
    while (left <= endidx) {
      int right = (i * 2) + 2;
      int indxtoshift;
      if (right <= endidx && store[right] < store[left]) {
        indxtoshift = right;
      } else {
        indxtoshift = left;
      }
      if (store[i] < store[indxtoshift]) {
        swapingfun(store, i, indxtoshift);
        i = indxtoshift;
        left = (i * 2) + 1;
      } else {
        return;
      }
    }
  }

  shftup(int i) {
    int parent = (i - 1) ~/ 2;
    while (i > 0 && store[parent] > store[i]) {
      swapingfun(store, i, parent);
      i = parent;
      parent = (i - 1) ~/ 2;
    }
  }

  shif(int i) {
    int parent = (i - 1) ~/ 2;
    while (i > 0 && store[parent] > store[i]) {
      swapingfun(store, i, parent);
      i = parent;
      parent = (i = 1) ~/ 2;
    }
  }
}

void main() {
  Heap value = Heap();
  value.insert(23);
  value.insert(3);
  value.insert(13);
  value.insert(2);
  value.insert(31); // Insert 31 into the heap
  value.remove(31); // Remove the element with value 31
  // value.remove(3);
  value.display();
}
