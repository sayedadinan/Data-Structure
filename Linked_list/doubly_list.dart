class Node {
  int? val;
  Node? next;
  Node? prev;
  Node(this.val);
}

class Dlinkedlist {
  Node? head;
  Node? tail;
  addnode(int val) {
    Node newnode = Node(val);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  headafter(int x) {
    Node newnode = Node(x);
    if (head == null) {
      head = newnode;
      tail = newnode;
    } else {
      newnode.prev = head;
      newnode.next = head?.next;
      head?.next?.prev = newnode;
      head?.next = newnode;
    }
  }

  aftertail(int x) {
    Node newnode = Node(x);
    if (head == null) {
      head = newnode;
      tail = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
      tail = newnode;
    }
  }

  deletehead() {
    if (head != null) {
      head?.next?.prev = null;
      head = head?.next;
    }
  }

  deletetail() {
    if (head == null) {
      print('this is empty');
    } else {
      tail = tail?.prev;
      tail?.next = null;
    }
  }

  displaydatas() {
    if (head == null) {
      print('doubly list is empty');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.val);
        temp = temp.next;
      }
    }
  }

  deleteitem(int val) {
    Node check = Node(val);
    Node? temp = head;
    if (temp != null && temp.val == check.val) {
      head = temp.next;
    }
    while (temp != null && temp.val != check.val) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp.prev != null) {
      temp.prev?.next = temp.next;
    }
    if (temp.next != null) {
      temp.next?.prev = temp.prev;
    }
  }

  sortingofdouble() {
    Node? current = head;
    if (current != null) {
      Node? adth = current.next;
      while (adth != null && current.val == adth.val) {
        adth = adth.next;
        adth?.prev = current;
      }
      current.next = adth;
      if (adth != null && adth == tail) {
        adth.next = null;
      }
      if (adth == tail && current.val == adth?.val) {
        tail = current;
        tail?.next = null;
      }
      current = adth;
    }
  }

  sortedListDelete() {
    if (head == null) {
      print('empty');
    } else {
      Node? temp = head;
      while (temp != null) {
        if (temp.val == temp.next?.val) {
          temp.next = temp.next?.next;
        } else {
          temp = temp.next;
        }
      }
    }
  }
}

void main() {
  Dlinkedlist list = Dlinkedlist();
  list.addnode(20);
  list.addnode(40);
  list.addnode(40);
  list.addnode(40);
  list.sortingofdouble();
  // list.deletehead();
  // list.headafter(25);
  list.aftertail(66);
  // list.deletetail();
  // list.deleteitem(25);
  list.sortedListDelete();
  list.displaydatas();
}
