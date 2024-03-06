class Binarysearch {
  int binarysearch(List<int> store, int target) {
    int start = 0;
    int end = store.length - 1;
    while (start <= end) {
      int middle = start + (end - start) ~/ 2;
      if (store[middle] == target) {
        return middle;
      } else if (store[middle] > target) {
        end = middle - 1;
      } else if (store[middle] < target) {
        start = middle + 1;
      }
    }
    return -1;
  }
}
