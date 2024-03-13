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

  deletedata(int val) {
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
}
