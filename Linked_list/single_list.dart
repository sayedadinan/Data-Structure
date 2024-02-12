// import 'dart:html';

class Node {
  int val;
  Node? next;

  Node(this.val, [this.next]);
}

class Linkedlist {
  Node? head;
  Node? tail;

  addvalue(int val) async {
    Node newnode = Node(val);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
    print('new node added');
  }

  displaydatas() {
    if (head == null) {
      print('linked list is empty');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.val);
        temp = temp.next;
      }
    }
  }

  deleteitems(int val) {
    Node? temp = head;
    Node? prev;
    if (temp != null && temp.val == val) {
      head = temp.next;
    } else {
      while (temp != null && temp.val != val) {
        prev = temp;
        temp = temp.next;
      }
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
    }
    prev?.next = temp.next;
  }

  valueinserting(int val, int nextto) {
    Node newvalue = Node(val);
    Node? temp = head;
    while (temp != null && temp.val != nextto) {
      temp = temp.next;
    }
    if (temp == null) {
      tail = newvalue;
    }
    if (temp == tail) {
      tail?.next = newvalue;
      tail = newvalue;
    }
    newvalue.next = temp?.next;
    temp?.next = newvalue;
  }

  headdelete(int val) {
    Node? temp = head;
    if (temp != null && temp.val == val) {
      head = temp.next;
      // tail = null;
    }
  }
}

class Newnode {
  int? data;
  Node? next;
  Node? prev;
  Newnode(this.data);
}

class Dlinkedlist {
  Node? head;
  Node? tail;

  addsomevalue(int val) {
    Node newnode = Node(val);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  displaydatas() {
    if (head == null) {
      print('linked list is empty');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.val);
        temp = temp.next;
      }
    }
  }

  headdelete() {
    if (head == null) {
      print('empty');
    } else {
      head = head?.next;
    }
  }

  taildelete() {
    if (head == null) {
      print('empty');
    } else if (head == tail) {
      head = null;
      tail = null;
    }
    Node? temp = head;
    while (temp != null && temp.next != tail) {
      temp = temp.next;
    }
    if (temp != null) {
      tail = temp;
      tail?.next = null;
    }
  }

  insertvalue(int nextto, int val) {
    Node newnode = Node(val);
    Node? temp = head;
    if (head == null) {
      head = newnode;
    } else {
      while (temp != null && temp.val != nextto) {
        temp = temp.next;
      }
      if (temp != null) {
        newnode.next = temp.next;
        temp.next = newnode;
      } else {
        print('emty');
      }
    }
  }

  sorting() {
    Node? current = head;
    while (current != null) {
      Node? adth = current.next;
      while (adth != null && current.val == adth.val) {
        adth = adth.next;
      }
      current.next = adth;
      if (adth == tail && current.val == adth?.val) {
        tail = current;
        tail?.next = null;
      }
      current = adth;
    }
  }

  reverse() {
    Node? prev = null;
    Node? current = head;
    while (current != null) {
      Node? adth = current.next;
      current.next = prev;
      prev = current;
      current = adth;
    }
    head = prev;
  }

  int sum(int x) {
    if (x == 0) {
      return x;
    } else {
      int s = x + sum(x - 1);
      print(s);
      return s;
    }
  }

  int min(int x) {
    if (x == 1) {
      return x;
    } else {
      int s = min(x - 1);
      print(s);
      return s;
    }
  }

  int multi(int x) {
    if (x == 1) {
      return x;
    } else {
      int s = x * multi(x - 1);
      print(s);
      return s;
    }
  }

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

  String reverseString(String input) {
    if (input.length <= 1) {
      return input;
    }
    String a = reverseString(input.substring(1)) + input[0];
    print(a);
    return a;
  }

  // binarysearch(List<int> store, int target) {
  //   int start = 0;
  //   int end = store.length - 1;
  //   while (start <= end) {
  //     int middle = start + (end - start) ~/ 2;
  //     if (store[middle] == target) {
  //       return middle;
  //     } else if (store[middle] > target) {
  //       end = middle - 1;
  //     } else if (store[middle] < target) {
  //       start = middle + 1;
  //     }
  //   }
  //   return -1;
  // }
  binarys(List<int> store, int target) {
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

  displaywithrec(temp) {
    if (temp == null) {
      print('empty');
    } else {
      displaywithrec(temp = temp.next);
    }
  }
}

void main() {
  Dlinkedlist list = Dlinkedlist();
  list.addsomevalue(20);
  list.addsomevalue(30);
  list.addsomevalue(40);
  // list.addsomevalue(40);
  // list.addsomevalue(60);
  // list.sorting();
  // list.reverse();
  // list.min(6);
  // list.multi(7);
  // List<int> store = [1, 2, 3, 4, 5, 6];
  // store.sort();
  // list.binarysearch(store, 4);
  // store.sort();
  // print("Sorted List: $store");
  // int resultBinarySearch = list.binarysearch(store, 2);
  // print("Binary Search Result: $resultBinarySearch");
  // list.sum(5);
  // list.sum(5);
  // list.reverseString('adnan');
  // list.headdelete();
  // list.taildelete();
  // list.insertvalue(40, 100);
  list.displaydatas();
  list.displaywithrec(list.head);
}
