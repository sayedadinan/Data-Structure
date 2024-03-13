import '../Third week/heaps/heap_sort_pract.dart';

class Heap {
  // List<int> store = [];

  parentfind(int i) {
    return (i - 1) ~/ 2;
  }

  heapify(int i, List<int> store, int length) {
    int largest = i;
    int left = (i * 2) + 1;
    int right = (i * 2) + 2;
    while (left < length && store[left] > store[largest]) {
      largest = left;
    }
    while (right < length && store[right] > store[largest]) {
      largest = right;
    }
    if (i != largest) {
      swapingfun(store, i, largest);
      heapify(largest, store, length);
    }
  }

  sorting(List<int> store) {
    int length = store.length;
    for (int i = parentfind(store.length - 1); i >= 0; i--) {
      heapify(i, store, length);
    }
    for (int i = length - 1; i > 0; i--) {
      swapingfun(store, i, 0);
      heapify(0, store, i);
    }
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }
}

// void main() {
//   Heap value = Heap();
//   List<int> numbers = [12, 11, 13, 5, 6, 7];
//   print("Original List: $numbers");
//   value.sorting(numbers);
//   print("Sorted List: $numbers");
// }

class Heaptest {
  List<int> store = [];
  heapify(int i, List<int> store, int length) {
    int largest = i;
    int left = (i * 2) + 1;
    int right = (i * 2) + 2;
    while (left < length && store[left] > store[largest]) {
      largest = left;
    }
    while (right < length && store[right] > store[largest]) {
      largest = right;
    }
    if (i != largest) {
      swapingfun(store, i, largest);
      heapify(largest, store, length);
    }
  }

  sorting(List<int> store) {
    int length = store.length;
    for (int i = (length - 1) ~/ 2; i >= 0; i--) {
      heapify(i, store, length);
    }
    for (int i = length - 1; i > 0; i--) {
      swapingfun(store, i, 0);
      heapify(0, store, i);
    }
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }
}

void main() {
  Againtrail value = Againtrail();
  List<int> numbers = [12, 11, 13, 5, 6, 7];
  print("Original List: $numbers");
  value.sorting(numbers);
  print("Sorted List: $numbers");
}

class Againtrail {
  List<int> store = [];
  heapify(int i, List<int> store, int length) {
    int largest = i;
    int left = (i * 2) + 1;
    int right = (i * 2) + 2;
    while (left < length && store[left] > store[largest]) {
      largest = left;
    }
    while (right < length && store[right] > store[largest]) {
      largest = right;
    }
    if (i != largest) {
      swapingfun(store, i, largest);
      heapify(largest, store, length);
    }
  }

  sorting(List<int> store) {
    int length = store.length;
    for (int i = (length - 1) ~/ 2; i >= 0; i--) {
      heapify(i, store, length);
    }
    for (int i = length - 1; i > 0; i--) {
      swapingfun(store, i, 0);
      heapify(0, store, i);
    }
  }
}
