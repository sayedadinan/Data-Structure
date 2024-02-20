class Node {
  int? data;
  Node? left, right;
  Node(this.data);
}

class Binary {
  Node? root;
  // inserting(int data) {
  //   Node? newval = Node(data);
  //   Node? currentnode = root;
  //   if (currentnode == null) {
  //     root = newval;
  //   } else {
  //     while (true) {
  //       if (newval.data! < currentnode!.data!) {
  //         if (currentnode.left == null) {
  //           currentnode.left = newval;
  //           break;
  //         } else {
  //           currentnode = currentnode.left;
  //         }
  //       } else {
  //         if (currentnode.right == null) {
  //           currentnode.right = newval;
  //           break;
  //         } else {
  //           currentnode = currentnode.right;
  //         }
  //       }
  //     }
  //   }
  // }
  insert(int data) {
    Node? newval = Node(data);
    if (root == null) {
      root = newval;
      return;
    }

    Node? current = root;
    while (current != null) {
      if (newval.data! < current.data!) {
        if (current.left == null) {
          current.left = newval;
          break;
        } else {
          current = current.left;
        }
      } else if (newval.data! > current.data!) {
        if (current.right == null) {
          current.right = newval;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  search(int val) {
    Node? current = root;
    while (current != null) {
      if (val == current.data) {
        return true;
      } else if (val < current.data!) {
        current = current.left;
      } else if (val > current.data!) {
        current = current.right;
      }
    }
    return false;
  }
  // bool search(int data) {
  //   Node? currentnode = root;
  //   while (currentnode != null) {
  //     if (data == currentnode.data) {
  //       return true; // Value found
  //     } else if (data < currentnode.data!) {
  //       currentnode = currentnode.left;
  //     } else {
  //       currentnode = currentnode.right;
  //     }
  //   }
  //   return false; // Value not found
  // }

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
  closest(int target) {
    Node? current = root;
    if (current == null) {
      // Handle the case when the tree is empty
      throw Exception("Tree is empty");
    }

    int closest = current.data!;
    while (current != null) {
      if ((target - closest).abs() > (target - current.data!)) {
        closest = current.data!;
      }
      if (target < current.data!) {
        current = current.left;
      } else if (target > current.data!) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }
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
  value.insert(12);
  value.insert(22);
  value.insert(32);
  // value.remove(22);
  print(value.search(22));
}
