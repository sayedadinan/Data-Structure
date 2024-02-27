class Heap {
  List<int> store = [];
  // heapify(int length, int i, List<int> store) {
  //   int left = (i * 2) + 1;
  //   int right = (i * 2) + 2;
  //   int largest = i;
  //   if (left < length && store[left] > store[largest]) {
  //     largest = left;
  //   }
  //   if (right < length && store[right] > store[largest]) {
  //     largest = right;
  //   }
  //   if (i != largest) {
  //     swapingfun(store, i, largest);
  //     heapify(length, largest, store);
  //   }
  // }

  // heapsort(List<int> store) {
  //   int length = store.length;
  //   for (int i = length - 1 ~/ 2; i >= 0; i--) {
  //     heapify(length, i, store);
  //   }
  //   for (int i = length - 1; i >= 0; i--) {
  //     swapingfun(store, i, 0);
  //     heapify(i, 0, store);
  //   }
  // }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  heapify(List<int> store, int length, int i) {
    int largest = i;
    int left = i * 2 + 1;
    int right = i * 2 + 2;
    if (left < length && store[left] > store[largest]) {
      largest = left;
    }
    if (right < length && store[right] > store[largest]) {
      largest = right;
    }
    if (i != largest) {
      swapingfun(store, i, largest);
      heapify(store, length, i);
    }
  }

  heapsort(List<int> store) {
    int length = store.length;
    for (int i = length - 1 ~/ 2; i >= 0; i--) {
      heapify(store, length, i);
    }
    for (int i = length - 1; i >= 0; i--) {
      swapingfun(store, i, 0);
      heapify(store, i, 0);
    }
  }
}

void main() {
  Heap value = Heap();
  List<int> numbers = [12, 11, 13, 5, 6, 7];
  print("Original List: $numbers");

  value.heapsort(numbers);

  print("Sorted List: $numbers");
}
