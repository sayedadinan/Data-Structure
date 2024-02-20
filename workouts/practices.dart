class Hashtest {
  late List<List<String>> table;
  late int size;
  Hashtest(int size) {
    this.size = size;
    table = List.generate(size, (index) => []);
  }
  int hashfun(dynamic key) {
    return key.hashCode.abs() % size;
  }

  insertval(dynamic key, String input) {
    int index = hashfun(key);
    table[index].add(input);
  }

  List<String> search(dynamic key) {
    int index = hashfun(key);
    return table[index];
  }

  remove(dynamic key, String input) {
    int index = hashfun(key);
    table[index].remove(input);
  }

  List<List<String>> displayall() {
    return table;
  }
}

void main() {
  List<int> store = [5, 33, 1, 32, 9, 0];
  Tests val = Tests();
  Hashtest test = Hashtest(5);
  test.insertval(2, 'adnan');
  test.displayall();
  print(val.insertionsort(store));
  print(val.bubblesort(store));
  print(val.selectionsort(store));
  print(val.mergesort(store));
  print(val.quicksort(store));
}

class Node {
  dynamic data;
  dynamic key;
  Node? next;
  Node(this.next, this.data);
}

class HashNode {
  int size;
  List<Node?>? table;
  HashNode(this.size) {
    table = List.generate(size, (index) => null);
  }
  hshfun(dynamic key) {
    return key.hashCode.abs() % size;
  }
}

class Stacks {
  List<String> test = [];
  push(dynamic input) {
    test.add(input);
  }

  pop() {
    test.removeLast();
  }

  peek() {
    print(test.last);
  }
}

class Tests {
  insertionsort(List<int> store) {
    for (int i = 1; i < store.length; i++) {
      int current = store[i];
      int j = i - 1;
      while (j >= 0 && store[j] > current) {
        store[j + 1] = store[j];
        j--;
      }
      store[j + 1] = current;
    }
    return store;
  }

  bubblesort(List<int> store) {
    for (int i = 0; i < store.length; i++) {
      for (int j = i + 1; j < store.length - 1; j++) {
        if (store[i] > store[j]) {
          int temp = store[j];
          store[j] = store[j + 1];
          store[j + 1] = temp;
        }
      }
    }
    return store;
  }

  selectionsort(List<int> store) {
    for (int i = 0; i < store.length; i++) {
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

  mergesort(List<int> store) {
    if (store.length <= 1) {
      return store;
    }
    int middle = store.length ~/ 2;
    List<int> firsthalf = store.sublist(0, middle);
    List<int> sechalf = store.sublist(middle);
    join(mergesort(firsthalf), mergesort(sechalf));
    return store;
  }

  join(List<int> firshalf, List<int> sechalf) {
    int j = 0, k = 0, i = 0;
    List<int> newval = List<int>.from(firshalf + sechalf);
    while (i < firshalf.length && j < sechalf.length) {
      if (firshalf[i] < sechalf[j]) {
        newval[k++] = firshalf[i++];
      } else {
        newval[k++] = sechalf[j++];
      }
      while (i < firshalf.length) {
        newval[k++] = firshalf[i++];
      }
      while (j < sechalf.length) {
        newval[k++] = sechalf[j++];
      }
    }
    return newval;
  }

  quicksort(List<int> store) {
    int startindx = 0;
    int endindx = store.length - 1;
    quicks(store, startindx, endindx);
    return store;
  }

  quicks(List<int> store, int startindx, int endindx) {
    if (startindx >= endindx) {
      return;
    }
    int left = startindx + 1;
    int right = endindx;
    int pivot = startindx;
    while (left <= right) {
      if (store[pivot] < store[left] && store[pivot] > store[right]) {
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
    quicks(store, startindx, right - 1);
    quicks(store, right + 1, endindx);
  }

  swapingfun(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }
}
