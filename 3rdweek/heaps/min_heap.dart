class Heap {
  List<int> heap = [];
  // minheap(List<int> store) {
  //   heap.addAll(store); // Copy elements of store into heap
  //   buildheap();
  // }

  buildheap() {
    for (int i = parentFind(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  shiftdown(int i) {
    int endindx = heap.length - 1;
    int leftindx = leftfind(i);
    while (leftindx <= endindx) {
      int rightindx = rightFind(i);
      int indxshifto;
      if (rightindx <= endindx && heap[rightindx] < heap[leftindx]) {
        indxshifto = rightindx;
      } else {
        indxshifto = leftindx;
      }
      if (heap.elementAt(i) > heap.elementAt(indxshifto)) {
        swapingfun(heap, i, indxshifto);
        i = indxshifto;
        leftindx = leftfind(i);
      } else {
        return;
      }
    }
  }

  shiftUp(int i) {
    int parentidx = parentFind(i);
    while (i > 0 && heap.elementAt(parentidx) > heap.elementAt(i)) {
      swapingfun(heap, i, parentidx);
      i = parentidx;
      parentidx = parentFind(i);
    }
  }

  peak() {
    return heap.elementAt(0);
  }

  remove(int i) {
    swapingfun(heap, i, heap.length - 1);
    heap.removeLast();
    if (i < heap.length) {
      // If the removed element was not the last one, fix the heap
      shiftdown(i);
      shiftUp(i);
    }
  }

  insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  parentFind(int i) {
    return (i - 1) ~/ 2;
  }

  leftfind(int i) {
    return (i * 2) + 1;
  }

  rightFind(int i) {
    return (i * 2) + 2;
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap.elementAt(i));
    }
  }
}

void main() {
  Heap value = Heap();
  // List<int> store = [3];
  // value.minheap(store);
  value.insert(5);
  value.insert(3);
  value.insert(2);
  value.insert(1);
  value.insert(4);
  // value.insert(12);
  // value.remove(3); // Remove the element at index 3
  value.display();
}
