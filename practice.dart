class Nodefortest {
  int? val;
  Nodefortest? next;
  Nodefortest(this.val, [this.next]);
}

class Linkedfortest {
  Nodefortest? head;
  Nodefortest? tail;
  addnode(int val) {
    Nodefortest newval = Nodefortest(val);

    if (head == null) {
      head = newval;
      tail = newval;
    } else {
      tail?.next = newval;
      tail = newval;
    }
  }

  displayfun() {
    if (head == null) {
      print('nothing is there');
    }
    Nodefortest? temp = head;
    while (temp != null) {
      print(temp.val);
      temp = temp.next;
    }
  }
  // displayfun() {
  //   if (tail == null) {
  //     print('nothing is there');
  //   }
  //   Nodefortest? temp = tail;
  //   while (temp != null) {
  //     print(temp.val);
  //     temp = temp.next;
  //   }
  // }

  addbeg(int val) {
    Nodefortest newval = Nodefortest(val);
    if (head == null) {
      head = newval;
      tail = newval;
    } else {
      newval.next = head;
      head = newval;
    }
  }

  addend(int val) {
    Nodefortest newval = Nodefortest(val);
    if (head == null) {
      head = newval;
      tail = newval;
    } else {
      tail?.next = newval;
      tail = newval;
    }
  }

  delspec(int val) {
    Nodefortest checkval = Nodefortest(val);
    Nodefortest? temp = head;
    Nodefortest? prev = null;
    while (temp != null && temp.val != checkval.val) {
      prev = temp;
      temp = temp.next;
    }
    if (temp != null) {
      prev?.next = temp.next;
    }
    if (temp?.next == null) {
      tail = temp;
    }
  }

  beforval(int val, int check) {
    Nodefortest newval = Nodefortest(val);
    Nodefortest? temp = head;
    Nodefortest? prev = null;
    while (temp != null && temp.val != check) {
      prev = temp;
      temp = temp.next;
    }
    if (prev == null) {
      newval.next = temp;
      head = newval;
    } else {
      prev.next = newval;
      newval.next = temp;
    }
  }

  afterval(int val, int check) {
    Nodefortest newval = Nodefortest(val);
    Nodefortest? temp = head;
    while (temp != null && temp.val != check) {
      temp = temp.next;
    }
    if (temp != null) {
      newval.next = temp.next;
      temp.next = newval;
    }
    if (temp == tail) {
      tail = newval;
    }
  }

  sortedsingly() {
    Nodefortest? temp = head;
    while (temp != null && temp.next != null) {
      if (temp.val == temp.next!.val) {
        temp.next = temp.next!.next;
      } else {
        temp = temp.next;
      }
    }
    tail = temp;
  }

  binary(List<int> store, int val) {
    int start = 0;
    int end = store.length - 1;
    while (start <= end) {
      int middle = start + (end - start) ~/ 2;
      if (store[middle] == val) {
        return middle;
      } else if (store[middle] > val) {
        end = middle - 1;
      } else if (store[middle] < val) {
        start = middle + 1;
      }
    }
    return -1;
  }
}

void main() {
  Linkedfortest value = Linkedfortest();
  List<int> store = [1, 2, 5, 4, 3, 5, 5, 5, 6];
  for (int cont in store) {
    value.addnode(cont);
  }
  // value.addend(10);
  // value.addbeg(5);
  // value.delspec(6);
  // value.beforval(18, 5);
  // value.afterval(14, 4);
  // value.sortedsingly();
  // int result = value.binary(store, 3);
  // print(result);
  value.displayfun();
}
