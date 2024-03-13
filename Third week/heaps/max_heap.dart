class Heap {
  List<int> heap = [];

  buildHeap() {
    for (int i = parentFind(heap.length - 1); i >= 0; i--) {
      shiftdown(i); // Adjust the heap to satisfy the max-heap property
    }
  }

  shiftdown(int i) {
    int endIdx = heap.length - 1;
    int leftIdx = leftFind(i);
    while (leftIdx <= endIdx) {
      int rightIdx = rightFind(i);
      int idxToShift;
      if (rightIdx <= endIdx && heap[rightIdx] > heap[leftIdx]) {
        idxToShift = rightIdx; // Select the larger child for swapping
      } else {
        idxToShift = leftIdx;
      }
      if (heap[i] < heap[idxToShift]) {
        swap(heap, i, idxToShift); // Swap with the larger child if necessary
        i = idxToShift;
        leftIdx = leftFind(i);
      } else {
        return;
      }
    }
  }

  shiftUp(int i) {
    int parentIdx = parentFind(i);
    while (i > 0 && heap[parentIdx] < heap[i]) {
      swap(heap, i, parentIdx); // Swap with parent if current node is greater
      i = parentIdx;
      parentIdx = parentFind(i);
    }
  }

  peek() {
    return heap[0];
  }

  remove(int i) {
    swap(heap, i, heap.length - 1);
    heap.removeLast();
    if (i < heap.length) {
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

  leftFind(int i) {
    return (i * 2) + 1;
  }

  rightFind(int i) {
    return (i * 2) + 2;
  }

  swap(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

void main() {
  Heap value = Heap();
  value.insert(5);
  value.insert(3);
  value.insert(2);
  value.insert(1);
  value.insert(4);
  value.buildHeap(); // Build the max-heap after inserting elements
  value.display();
}
