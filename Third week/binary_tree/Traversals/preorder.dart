class Node {
  Node? left, right;
  int? data;
  Node(this.data);
}

class Binary {
  Node? root;
  insert(int data) {
    Node? currentnode = root;
    if (currentnode == null) {
      root = Node(data);
      return;
    } else {
      while (true) {
        if (data < currentnode!.data!) {
          if (currentnode.left == null) {
            currentnode.left = Node(data);
            break;
          } else {
            currentnode = currentnode.left;
          }
        } else {
          if (currentnode.right == null) {
            currentnode.right = Node(data);
            break;
          } else {
            currentnode = currentnode.right;
          }
        }
      }
    }
  }

  preOrder() {
    preOrders(root);
  }

  preOrders(Node? node) {
    if (node != null) {
      print(node.data);
      preOrders(node.left);
      preOrders(node.right);
    }
  }
}
