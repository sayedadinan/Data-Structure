import '../3rdweek/heaps/heap_sort_pract.dart';

class Sort {
  List<int> store = [];
  heapsort(List<int> store) {
    int length = store.length;
    for (int i = length - 1 ~/ 2; i >= 0; i--) {
      heapify(i, length, store);
    }
    for (int i = length - 1; i >= 0; i--) {
      swapingfun(store, i, 0);
      heapify(0, i, store);
    }
  }

  heapify(int i, int length, List<int> store) {
    int largest = i;
    int left = (i * 2) + 1;
    int right = (i * 2) + 2;
    if (left < length && store[left] > store[largest]) {
      largest = left;
    } else if (right < length && store[right] > store[largest]) {
      largest = right;
    }
    if (i != largest) {
      swapingfun(store, i, largest);
      heapify(largest, length, store);
    }
  }
}

void main() {
  Sort value = Sort();
  List<int> numbers = [12, 11, 13, 5, 6, 7];
  print("Original List: $numbers");

  value.heapsort(numbers);

  print("Sorted List: $numbers");
}
