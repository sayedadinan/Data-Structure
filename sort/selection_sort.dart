class Sort {
  selectionsort(List<int> store) {
    for (int i = 0; i < store.length - 1; i++) {
      int min = i;
      for (int j = i + 1; j < store.length; j++) {
        if (store[j] < store[min]) {
          min = j;
        }
      }
      if (min != i) {
        int temp = store[i];
        store[i] = store[min];
        store[min] = temp;
      }
    }
    return store;
  }
}

void main() {
  List<int> store = [7, 4, 8, 9, 5];
  Sort value = Sort();
  List<int> result = value.selectionsort(store);
  print(result);
}
