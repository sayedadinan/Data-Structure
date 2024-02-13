class Node {
  int? data;
  Node? left, right;
  Node(this.data);
}

class Binary {
  Node? root;
  inserting(int data) {
    Node? newval = Node(data);
    Node? currentnode = root;
    if (currentnode == null) {
      root = newval;
    } else {
      while (true) {
        if (newval.data! < currentnode!.data!) {
          if (currentnode.left == null) {
            currentnode.left = newval;
            break;
          } else {
            currentnode = currentnode.left;
          }
        } else {
          if (currentnode.right == null) {
            currentnode.right = newval;
            break;
          } else {
            currentnode = currentnode.right;
          }
        }
      }
    }
  }

  bool search(int data) {
    Node? currentnode = root;
    while (currentnode != null) {
      if (data == currentnode.data) {
        return true; // Value found
      } else if (data < currentnode.data!) {
        currentnode = currentnode.left;
      } else {
        currentnode = currentnode.right;
      }
    }
    return false; // Value not found
  }

  remove(int data) {
    removehelper(data, root, null);
  }

  removehelper(int data, Node? currentnode, Node? parentnode) {
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
          removehelper(currentnode.data!, currentnode.right, currentnode);
        } else {
          if (parentnode == null) {
            if (currentnode.right == null) {
              root = currentnode.left;
            } else {
              root = currentnode.right;
            }
          } else if (parentnode.left == currentnode) {
            parentnode.left = currentnode.left ?? currentnode.right;
          } else {
            parentnode.right = currentnode.left ?? currentnode.right;
          }
          break;
        }
      }
    }
  }

  // removehelper(int data, Node? currentnode, Node? parentnode) {
  //   while (currentnode != null) {
  //     if (data < currentnode.data!) {
  //       parentnode = currentnode;
  //       currentnode = currentnode.left;
  //     } else if (data > currentnode.data!) {
  //       parentnode = currentnode;
  //       currentnode = currentnode.right;
  //     } else {
  //       if (currentnode.left != null && currentnode.right != null) {
  //         currentnode.data = getminval(currentnode.right);
  //         removehelper(currentnode.data!, currentnode.right, currentnode);
  //       } else {
  //         if (parentnode == null) {
  //           if (parentnode?.right == null) {
  //             root = currentnode.left;
  //           } else {
  //             root = currentnode.right;
  //           }
  //         } else {
  //           if (parentnode.left == currentnode) {
  //             if (parentnode.right == null) {
  //               parentnode.left = currentnode.left;
  //             } else {
  //               parentnode.left = currentnode.right;
  //             }
  //           } else {
  //             if (parentnode.right == null) {
  //               parentnode.left = currentnode.left;
  //             } else {
  //               parentnode.left = currentnode.right;
  //             }
  //           }
  //         }
  //         break;
  //       }
  //     }
  //   }
  // }
}

getminval(Node? current) {
  if (current?.left == null) {
    return current?.data;
  } else {
    getminval(current?.left);
  }
}

void main() {
  Binary value = Binary();
  value.inserting(12);
  value.inserting(22);
  value.inserting(32);
  value.remove(22);
  print(value.search(22));
}
