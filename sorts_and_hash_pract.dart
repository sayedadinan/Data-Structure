// // class Practice {
// //   insert(List<int> store) {
// //     for (int i = 1; i < store.length; i++) {
// //       int current = store[i];
// //       int j = i - 1;
// //       while (j >= 0 && store[j] > current) {
// //         store[j + 1] = store[j];
// //         j--;
// //       }
// //       store[j + 1] = current;
// //     }
// //     return store;
// //   }

// //   selectiion(List<int> store) {
// //     for (int i = 0; i < store.length - 1; i++) {
// //       int min = i;
// //       for (int j = i + 1; j < store.length; j++) {
// //         if (store[j] < store[min]) {
// //           min = store[j];
// //         }
// //       }
// //       if (i != min) {
// //         int temp = store[i];
// //         store[i] = store[min];
// //         store[min] = temp;
// //       }
// //     }
// //     return store;
// //   }

// //   quicksort(List<int> store) {
// //     int startindx = 0;
// //     int endindx = store.length - 1;
// //     quicksortfun(store, startindx, endindx);
// //     return store;
// //   }

// //   quicksortfun(List<int> store, int startindx, int endindx) {
// //     if (startindx >= endindx) {
// //       return;
// //     }
// //     int pivot = startindx;
// //     int left = startindx + 1;
// //     int right = endindx;
// //     while (left <= right) {
// //       if (store[pivot] < store[left] && store[right] < store[pivot]) {
// //         swapfun(store, left, right);
// //         left++;
// //         right--;
// //       }
// //       if (store[left] <= store[pivot]) {
// //         left++;
// //       }
// //       if (store[right] >= store[pivot]) {
// //         right--;
// //       }
// //     }
// //     swapfun(store, right, pivot);
// //     quicksortfun(store, startindx, right - 1);
// //     quicksortfun(store, right + 1, endindx);
// //   }

// //   swapfun(List<int> store, int i, int j) {
// //     int temp = store[i];
// //     store[i] = store[j];
// //     store[j] = temp;
// //   }
// // }

// void main() {
//   // Practice value = Practice();
//   List<int> store = [8, 14, 3, 16, 2];
//   // List<int> result = value.insert(store);
//   // print(result);
//   // List<int> results = value.selectiion(store);
//   // print(results);
//   // List<int> forquick = [55, 3, 21, 4, 1, 0, 7];
//   // List<int> ans = value.quicksort(forquick);
//   // print(ans);
//   // Tests val = Tests();
//   SingleLL dat = SingleLL();
//   Stackarray stack = Stackarray();
// print(val.bubblesort(store));
//   // print(val.selectionsort(store));
//   // print(val.mergefirst(store));
//   // print(val.quickfirst(store));
//   dat.adding(23);
//   dat.adding(33);
//   dat.adding(43);
//   // dat.poping();
//   dat.display();
//   dat.peek();
//   stack.addingfun(store);
// }

// class Tests {
//   bubblesort(List<int> store) {
//     for (int i = 0; i < store.length - 1; i++) {
//       for (int j = 0; j < store.length - i - 1; j++) {
//         if (store[j] > store[j + 1]) {
//           int temp = store[j];
//           store[j] = store[j + 1];
//           store[j + 1] = temp;
//         }
//       }
//     }
//     return store;
//   }

//   selectionsort(List<int> store) {
//     for (int i = 0; i < store.length - 1; i++) {
//       int min = i;
//       for (int j = i + 1; j < store.length; j++) {
//         if (store[j] < store[min]) {
//           min = j;
//         }
//       }
//       if (min != i) {
//         int temp = store[i];
//         store[i] = store[min];
//         store[min] = temp;
//       }
//     }
//     return store;
//   }

//   insertionsorts(List<int> datas) {
//     for (int i = 1; i < datas.length; i++) {
//       int current = datas[i];
//       int j = i - 1;
//       while (j >= 0 && datas[j] > current) {
//         datas[j + 1] = datas[j];
//         j--;
//       }
//       datas[j + 1] = current;
//     }
//     return datas;
//   }

//   mergefirst(List<int> store) {
//     if (store.length <= 1) {
//       return store;
//     }
//     int middle = store.length ~/ 2;
//     List<int> firsthalf = store.sublist(0, middle);
//     List<int> sechalf = store.sublist(middle);
//     return rejoin(mergefirst(firsthalf), mergefirst(sechalf));
//   }

//   rejoin(List<int> firsthalf, List<int> sechalf) {
//     List<int> newval = List.from(firsthalf + sechalf);
//     int i = 0, k = 0, j = 0;
//     while (i < firsthalf.length && j < sechalf.length) {
//       if (firsthalf[i] > sechalf[j]) {
//         newval[k++] = sechalf[j++];
//       } else {
//         newval[k++] = firsthalf[i++];
//       }
//     }
//     while (i < firsthalf.length) {
//       newval[k++] = firsthalf[i++];
//     }
//     while (j < sechalf.length) {
//       newval[k++] = sechalf[j++];
//     }
//     return newval;
//   }

//   quickfirst(List<int> store) {
//     int startinx = 0;
//     int endindx = store.length - 1;
//     quckfun(store, startinx, endindx);
//     return store;
//   }

//   quckfun(List<int> store, int startinx, int endinx) {
//     if (startinx <= endinx) {
//       return;
//     }
//     int pivot = 0;
//     int right = startinx + 1;
//     int left = endinx;
//     while (left >= right) {
//       if (store[pivot] < store[left] && store[pivot] > store[right]) {
//         swapfun(store, right, left);
//         right--;
//         left++;
//       }
//       if (store[left] < store[pivot]) {
//         left++;
//       }
//       if (store[right] > store[pivot]) {
//         right--;
//       }
//     }
//     swapfun(store, right, pivot);
//     quckfun(store, startinx, right - 1);
//     quckfun(store, right + 1, endinx);
//   }
// }

// swapfun(List<int> store, int i, int j) {
//   int temp = store[i];
//   store[i] = store[j];
//   store[j] = temp;
// }

// class Node {
//   int? val;
//   Node? next;
//   Node(this.val);
// }

// class SingleLL {
//   Node? top;
//   adding(int val) {
//     Node? newval = Node(val);
//     Node? temp = top;
//     if (temp == null) {
//       top = newval;
//     } else {
//       newval.next = top;
//       top = newval;
//     }
//   }

//   poping() {
//     if (top == null) {
//       print('empty');
//     } else {
//       top = top?.next;
//     }
//   }

//   display() {
//     Node? temp = top;
//     while (temp != null) {
//       print(temp.val);
//       temp = temp.next;
//     }
//   }

//   peek() {
//     if (top == null) {
//       print('it is empty');
//     } else {
//       print(top?.val);
//     }
//   }
// }

// class Stackarray {
//   List<int> test = [];
//   pushs(int val) {
//     test.add(val);
//   }

//   pop() {
//     test.removeLast();
//   }

//   peek() {
//     print(test.last);
//   }

//   isempty() {
//     return test.isEmpty;
//   }

//   addingfun(List<int> store) {
//     for (int i = 0; i < store.length; i++) {
//       pushs(store[i]);
//     }
//     for (int j = test.length - 1; j >= 0; j--) {
//       print(test[j]);
//     }
//   }
// }

class Stackarray {
  List<int> test = [];

  pushs(int val) {
    test.add(val);
  }

  pop() {
    test.removeLast();
  }

  peek() {
    return test.last;
  }

  isempty() {
    return test.isEmpty;
  }

  addingfun(List<int> store) {
    for (int i = 0; i < store.length; i++) {
      pushs(store[i]);
    }
    // for (int j = test.length - 1; j >= 0; j--) {
    //   print(test[j]);
    // }
  }

  reverseList() {
    Stackarray reversedStack = Stackarray();
    while (!isempty()) {
      reversedStack.pushs(peek());
      pop();
    }
    return reversedStack;
  }
}

void main() {
  Hashtable hash = Hashtable(5);
  Stackarray stack = Stackarray();
  List<int> myList = [1, 2, 3, 4, 5];

  print("Original list:");
  print(stack.addingfun(myList));

  print("\nReversed list:");
  Stackarray reversedStack = stack.reverseList();
  while (!reversedStack.isempty()) {
    print(reversedStack.peek());
    reversedStack.pop();
    hash.insertval(2, 6);
    hash.remove(5, 10);
    hash.search(2);
    hash.displayall();
  }
}

class Hashtable {
  List<List<int>>? table;
  late int size;
  Hashtable(int size) {
    this.size = size;
    table = List.generate(size, (index) => []);
  }
  int hashfun(dynamic key) {
    return key.hashCode.abs() % size;
  }

  insertval(int val, dynamic key) {
    int index = hashfun(key);
    table?[index].add(val);
  }

  search(dynamic key) {
    int index = hashfun(key);
    return table?[index];
  }

  remove(dynamic key, int value) {
    int index = hashfun(key);
    table?[index].remove(value);
  }

  void displayall() {
    for (int i = 0; i < size; i++) {
      List<int> temp = table![i];
      print(temp[i]);
    }
  }
}
