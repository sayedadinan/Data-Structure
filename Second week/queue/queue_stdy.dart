class Node {
  int? val;
  Node? next;
  Node(this.val);
}

class Queue {
  Node? front;
  Node? rear;
  enque(int val) {
    Node newnode = Node(val);
    if (rear == null) {
      front = rear = newnode;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
  }

  deque() {
    if (front == null) {
      print('empty');
    } else {
      front = front?.next;
    }
    if (front == null) {
      rear == null;
    }
  }

  displays() {
    Node? temp = front;
    while (temp != null) {
      print(temp.val);
      temp = temp.next;
    }
  }
}

void main() {
  Queue value = Queue();
  value.enque(4);
  value.enque(3);
  value.enque(5);
  value.enque(7);
  value.enque(9);
  value.enque(8);
  value.deque();
  value.displays();
}
