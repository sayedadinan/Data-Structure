class Node {
  int? val;
  Node? next;
  Node(this.val);
}

class Stack {
  Node? top;
  pushoradd(int val) {
    Node newnode = Node(val);
    if (top == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }

  displayfun() {
    if (top == null) {
      print('nothing is there');
    }
    Node? temp = top;
    while (temp != null) {
      print(temp.val);
      temp = temp.next;
    }
  }

  pop() {
    if (top == null) {
      print('it is null');
    } else {
      top = top?.next;
    }
  }

  push(int val) {
    Node? temp = top;
    Node newnode = Node(val);
    if (temp == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }

  popingtest() {
    Node? temp = top;
    if (temp == null) {
      print('its a null value');
    } else {
      top = top?.next;
    }
  }

  peek() {
    if (top == null) {
      print('it is empty');
    } else {
      print(top?.val);
    }
  }
  // insertatbottom(int val) {
  //   Node? temp = top;
  //   if (temp == null) {
  //     push(val);
  //   } else {
  //     var k = pop();
  //     insertatbottom(val);
  //     push(k);
  //   }
  // }
}

class Stacks {
  List<String> _items = [];

  void push(String item) {
    _items.add(item);
  }

  String pop() {
    if (isEmpty()) {
      throw StateError("Stack is empty");
    }
    return _items.removeLast();
  }

  bool isEmpty() {
    return _items.isEmpty;
  }
}

String reverseString(String input) {
  Stacks stack = Stacks();

  // Push each character onto the stack
  for (int i = 0; i < input.length; i++) {
    stack.push(input[i]);
  }

  // Pop characters from the stack to construct the reversed string
  String reversed = "";
  while (!stack.isEmpty()) {
    reversed += stack.pop();
  }

  return reversed;
}

void main() {
  String input = "ayammad";
  String reversed = reverseString(input);
  print("Original: $input");
  print("Reversed: $reversed");
}

// void main() {
//   Stack value = Stack();
//   // value.pushoradd(4);
//   // value.pushoradd(2);
//   // value.pushoradd(9);
//   // value.pushoradd(8);
//   // value.push(20);
//   // value.push(30);
//   // value.push(670);
//   // value.push(280);
//   // value.insertatbottom(22);
//   value.pop();
//   value.popingtest();
//   value.displayfun();
// }
