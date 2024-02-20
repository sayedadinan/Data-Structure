class Heap {
  void heapify(List list, int length, int i) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;
    if (left < length && list[left] > list[largest]) {
      largest = left;
    }
    if (right < length && list[right] > list[largest]) {
      largest = right;
    }
    if (largest != i) {
      int temp = list[i];
      list[i] = list[largest];
      list[largest] = temp;
      heapify(list, length, largest);
    }
  }

  void heapSort(List list) {
    int length = list.length;
    for (int i = length ~/ 2 - 1; i >= 0; i--) {
      heapify(list, length, i);
    }
    for (int i = length - 1; i >= 0; i--) {
      int temp = list[0];
      list[0] = list[i];
      list[i] = temp;
      heapify(list, i, 0);
    }
  }
}

void main() {
  Heap value = Heap();
  List<int> numbers = [12, 11, 13, 5, 6, 7];
  print("Original List: $numbers");

  value.heapSort(numbers);

  print("Sorted List: $numbers");
}
