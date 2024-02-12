class Sort {
  quicksort(List<int> store) {
    int startinx = 0;
    int endindx = store.length - 1;
    quicksortfun(store, startinx, endindx);
    return store;
  }

  quicksortfun(List<int> store, int startinx, int endindx) {
    if (startinx >= endindx) {
      return;
    }
    int pivot = startinx;
    int left = startinx + 1;
    int right = endindx;
    while (left <= right) {
      if (store[pivot] < store[left] && store[right] < store[pivot]) {
        swapingfun(store, left, right);
        left++;
        right--;
      }
      if (store[left] <= store[pivot]) {
        left++;
      }
      if (store[right] >= store[pivot]) {
        right--;
      }
    }
    swapingfun(store, right, pivot);
    quicksortfun(store, startinx, right - 1);
    quicksortfun(store, right + 1, endindx);
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }
}

void main() {
  Sort value = Sort();
  List<int> store = [
    99,
    8,
    67,
    24,
    100,
    44,
    0,
    7,
    887,
    445,
    564,
    122,
    233,
  ];
  List<int> result = value.quicksort(store);
  print(result);
}
