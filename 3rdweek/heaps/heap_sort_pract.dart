// class Sort {
//   void heapify(int i, List<int> store, length) {
//     int largest = i;
//     int left = 2 * i + 1;
//     int right = 2 * i + 2;
//     while (left < length && store[left] > store[largest]) {
//       largest = left;
//     }
//     while (right < length && store[right] > store[largest]) {
//       largest = right;
//     }
//     if (i != largest) {
//       swapingfun(store, i, largest);
//       heapify(store, length, largest);
//     }
//   }

//   void sorting(List store) {
//     int length = store.length;
//     for (int i = length ~/ 2 - 1; i >= 0; i--) {
//       heapify(store, length, i);
//     }
//     for (int i = length - 1; i >= 0; i--) {
//       int temp = store[0];
//       store[0] = store[i];
//       store[i] = temp;
//       heapify(store, i, 0);
//     }
//   }
// }

// swapingfun(List store, int i, int j) {
//   int temp = store[i];
//   store[i] = store[j];
//   store[j] = temp;
// }

// void main() {
//   Sort value = Sort();
//   List<int> numbers = [12, 11, 13, 5, 6, 7];
//   print("Original List: $numbers");

//   value.sorting(numbers);

//   print("Sorted List: $numbers");
// }
class Sort {
  void heapify(int i, List<int> store, int length) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;
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

  void sorting(List<int> store) {
    int length = store.length;
    for (int i = length ~/ 2 - 1; i >= 0; i--) {
      heapify(i, store, length);
    }
    for (int i = length - 1; i >= 0; i--) {
      int temp = store[0];
      store[0] = store[i];
      store[i] = temp;
      heapify(0, store, i);
    }
  }
}

void swapingfun(List<int> store, int i, int j) {
  int temp = store[i];
  store[i] = store[j];
  store[j] = temp;
}

void main() {
  Sort value = Sort();
  List<int> numbers = [12, 11, 13, 5, 6, 7];
  print("Original List: $numbers");
  value.sorting(numbers);
  print("Sorted List: $numbers");
}
