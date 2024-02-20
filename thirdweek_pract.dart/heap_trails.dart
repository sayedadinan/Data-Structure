class Heap {
  List<int> store = [];

  buildheap() {
    int n = store.length;
    for (int i = (n ~/ 2) - 1; i >= 0; i--) {
      shiftdown(i);
    }
  }

  shiftdown(int i) {
    int endindx = store.length - 1;
    int left = leftfind(i);
    while (left <= endindx) {
      int right = rightfind(i);
      int indxshift;
      if (right <= endindx && store[right] < store[left]) {
        indxshift = right;
      } else {
        indxshift = left;
      }
      if (store[i] > store[indxshift]) {
        swapingfun(store, i, indxshift);
        i = indxshift;
        left = leftfind(i);
      } else {
        return;
      }
    }
  }

  shifup(int i) {
    int parent = parentfind(i);
    while (i >= 0 && store[parent] > store[i]) {
      swapingfun(store, i, parent);
      parent = i;
      parent = parentfind(i);
    }
  }

  remove() {
    swapingfun(store, 0, store.length - 1);
    store.removeAt(0);
    shiftdown(0);
  }

  insert(int value) {
    store.add(value);
    shifup(store.length - 1);
  }

  parentfind(int i) {
    return (i - 1) ~/ 2;
  }

  leftfind(int i) {
    return (i * 2) + 1;
  }

  rightfind(int i) {
    return (i * 2) + 2;
  }

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
}

void main() {
  Heap value = Heap();
  value.insert(23);
  value.insert(2);
  value.insert(3);
  value.insert(4);
  value.insert(83);
  value.insert(9);
  value.insert(23);
  value.insert(43);
  value.insert(1);
  value.insert(30);
  value.display();
}

class Testheap {
  List<int> store = [];
  buildheap() {
    for (int i = (store.length - 1) ~/ 2; i >= 0; i--) {
      shiftdown(i);
    }
  }

  shiftdown(int i) {
    int endindx = store.length - 1;
    int left = (i * 2) + 1;
    while (left <= endindx) {
      int right = (i * 2) + 2;
      int indxshifto;
      if (right <= endindx && store[right] < store[left]) {
        indxshifto = right;
      } else {
        indxshifto = left;
      }
      if (store[i] > store[indxshifto]) {
        swapingfun(store, i, indxshifto);
        i = indxshifto;
        left = (i * 2) + 1;
      } else {
        return;
      }
    }
  }

  shiftup(int i) {
    int parent = parentfind(i);
    while (i >= 0 && store[parent] > store[i]) {
      swapingfun(store, i, parent);
      parent = i;
      parent = parentfind(i);
    }
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  parentfind(int i) {
    return (i - 1) ~/ 2;
  }

  leftfind(int i) {
    return (i * 2) + 1;
  }

  rightfind(int i) {
    return (i * 2) + 2;
  }
}

class Againheap {
  List<int> store = [];
  buildheap() {
    for (int i = (store.length - 1) ~/ 2; i >= 0; i--) {}
  }

  shifdown(int i) {
    int endindx = store.length - 1;
    int left = (i * 2) + 1;
    while (left <= endindx) {
      int right = (i * 2) + 2;
      int indxtoshift;
      if (right <= endindx && store[right] < store[left]) {
        indxtoshift = right;
      } else {
        indxtoshift = left;
      }
      if (store[i] > store[indxtoshift]) {
        swapingfun(store, i, indxtoshift);
        i = indxtoshift;
        left = (i * 2) + 1;
      }
    }
  }

  shiftup(int i) {
    int parent = (i - 1) ~/ 2;
    while (i >= 0 && store[parent] > store[i]) {
      swapingfun(store, i, parent);
      parent = i;
      parent = (i - 1) ~/ 2;
    }
  }

  insert(int val) {
    store.add(val);
    shiftup(store.length - 1);
  }

  remove(int val) {
    swapingfun(store, 0, store.length - 1);
    store.removeAt(0);
    shifdown(0);
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }
}
