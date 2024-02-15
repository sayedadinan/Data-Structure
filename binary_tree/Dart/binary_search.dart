class Node {
  int? data;
  Node? left, right;
  Node(this.data);
}

void main() {
  Binary value = Binary();
  value.insert(10);
  value.remove(13);
  print(value.search(10));
  // value.printTree(value.root);
  // value.inOrder();
  // print('inorder finish');
  // value.preOrder();
  // print('preorder finish');
  // value.postOrder();
  // print('postorder finish');
}

class Binary {
  Node? root;
  insert(int data) {
    Node? currentnode = root;
    // Node newval = Node(data);
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

  bool search(int data) {
    if (root == null) {
      print('empty');
    }
    Node? current = root;
    while (current != null) {
      if (data < current.data!) {
        current = current.left;
      } else if (data > current.data!) {
        current = current.right;
      } else {
        return true; // Value found
      }
    }
    return false; // Value not found
  }

  remove(int data) {
    if (root == null) {
      return;
    }
    root = removeHelper(data, root, null);
  }

  removeHelper(int data, Node? currentnode, Node? parentnode) {
    while (currentnode != null) {
      if (data < currentnode.data!) {
        parentnode = currentnode;
        currentnode = currentnode.left;
      } else if (data > currentnode.data!) {
        parentnode = currentnode;
        currentnode = currentnode.right;
      } else {
        if (currentnode.left != null && currentnode.right != null) {
          currentnode.data = getminval(currentnode.right!);
          removeHelper(currentnode.data!, currentnode.right, currentnode);
        } else {
          if (parentnode == null) {
            if (currentnode.right == null) {
              root = currentnode.left;
            } else {
              root = currentnode.right;
            }
          } else {
            if (parentnode.left == currentnode) {
              if (currentnode.right == null) {
                parentnode.left = currentnode.left;
              } else {
                parentnode.left = currentnode.right;
              }
            } else {
              if (currentnode.right == null) {
                parentnode.right = currentnode.left;
              } else {
                parentnode.right = currentnode.right;
              }
            }
          }
          break;
        }
      }
    }
  }

  preOrder() {
    preOrders(root);
  }

  preOrders(Node? node) {
    // Update parameter to accept null nodes
    if (node != null) {
      print(node.data);
      preOrders(
          node.left); // Check if left child is not null before accessing it
      preOrders(
          node.right); // Check if right child is not null before accessing it
    }
  }

  postOrder() {
    postOrders(root);
  }

  inOrder() {
    inOrders(root);
  }

  postOrders(Node? node) {
    // Update parameter to accept null nodes
    if (node != null) {
      postOrders(
          node.left); // Check if left child is not null before accessing it
      postOrders(
          node.right); // Check if right child is not null before accessing it
      print(node.data);
    }
  }

  // postOrders(Node node) {
  //   if (node != null) {
  //     preOrders(node.left!);
  //     preOrders(node.right!);
  //     print(node.data);
  //   }
  // }
  inOrders(Node? node) {
    // Update parameter to accept null nodes
    if (node != null) {
      inOrders(
          node.left); // Check if left child is not null before accessing it
      if (node.data != null) {
        print(node.data);
      }
      inOrders(
          node.right); // Check if right child is not null before accessing it
    }
  }

  removetest(int data, Node? current, Node? parentnode) {
    while (current != null) {
      if (data < current.data!) {
        parentnode = current;
        current = current.left;
      } else if (data > current.data!) {
        parentnode = current;
        current = current.right;
      } else {
        if (current.right != null && current.left != null) {
          current.data = getminval(current.right!);
          removetest(current.data!, current.right, current);
        } else {
          if (parentnode == null) {
            if (parentnode?.right == null) {
              root = current.left;
            } else {
              root = current.right;
            }
          } else {
            if (parentnode.left == current) {
              if (current.right == null) {
                parentnode.left = current.left;
              } else {
                parentnode.left = current.right;
              }
            } else {
              if (current.right == null) {
                parentnode.right = current.left;
              } else {
                parentnode.right = current.right;
              }
            }
          }
          break;
        }
      }
    }
  }

  void printTree(Node? node) {
    if (node != null) {
      // Traverse left subtree
      printTree(node.left);

      // Print current node's value
      print(node.data);

      // Traverse right subtree
      printTree(node.right);
    }
    if (root == null) {
      print('empty');
    }
  }
}

getminval(Node currentnode) {
  if (currentnode.left == null) {
    return currentnode.data;
  } else {
    return getminval(currentnode.left!);
  }
}
