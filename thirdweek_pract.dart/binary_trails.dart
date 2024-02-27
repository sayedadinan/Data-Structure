// class Node {
//   int? data;
//   Node? left, right;
//   Node(this.data);
// }

// class Binarytreesearch {
//   List<int> store = [];
//   Node? root;
//   insert(int val) {
//     Node? newval = Node(val);
//     Node? current = root;
//     if (current == null) {
//       current = newval;
//     } else {
//       while (true) {
//         if (newval.data! < current!.data!) {
//           if (current.left == null) {
//             current.left = newval;
//           } else {
//             current = current.left;
//           }
//         } else if (newval.data! > current.data!) {
//           if (current.right == null) {
//             current.right = newval;
//           } else {
//             current = current.right;
//           }
//         }
//         break;
//       }
//     }
//   }

//   search(int val) {
//     Node? current = root;
//     while (current != null) {
//       if (current.data! == val) {
//         return true;
//       }
//       if (current.data! < val) {
//         current = current.left;
//       } else if (val > current.data!) {
//         current = current.right;
//       }
//     }
//     return false;
//   }

//   remove(int val) {}
//   removehelper(int val, Node? current, Node? parent) {
//     while (current != null) {
//       if (val < current.data!) {
//         parent = current;
//         current = current.left;
//       } else if (val > current.data!) {
//         parent = current;
//         current = current.right;
//       } else {
//         if (current.left != null && current.right != null) {
//           current.data = getminval(current.right!);
//           removehelper(current.data!, current.right, current);
//         } else {
//           if (parent == null) {
//             if (current.right == null) {
//               root = current.left;
//             } else {
//               root = current.right;
//             }
//           } else if (parent.left == current) {
//             if (current.right == null) {
//               parent.left = current.left;
//             } else {
//               parent.left = current.right;
//             }
//           } else {
//             if (current.left == null) {
//               parent.left = current.right;
//             } else {
//               parent.left = current.left;
//             }
//           }
//         }
//       }
//       break;
//     }
//   }

//   closest(int target) {
//     Node? current = root;
//     int closest = current!.data!;
//     while (current != null) {
//       if ((target - closest).abs() > (target - current.data!)) {
//         closest = current.data!;
//       }
//       if (target < current.data!) {
//         current = current.left;
//       } else if (target > current.data!) {
//         current = current.right;
//       } else {
//         break;
//       }
//     }
//     return closest;
//   }

//   insrts(int data) {
//     Node? newval = Node(data);
//     if (root == null) {
//       root = newval;
//     }

//     Node? current = root;
//     while (current != null) {
//       if (newval.data! < current.data!) {
//         if (current.left == null) {
//           current.left = newval;
//         } else {
//           current = current.left;
//         }
//       } else if (newval.data! > current.data!) {
//         if (current.right == null) {
//           current.right = newval;
//         } else {
//           current = current.right;
//         }
//       }
//     }
//   }

//   searchs(int val) {
//     Node? current = root;
//     while (current != null) {
//       if (val == current.data) {
//         return true;
//       }
//       if (val < current.data!) {
//         current = current.left;
//       }
//       if (val < current!.data!) {
//         current = current.right;
//       }
//     }
//     return false;
//   }

//   buildheap() {
//     for (int i = parentfint(store.length - 1); i >= 0; i--) {
//       shiftdown(i);
//     }
//   }

//   shiftdown(int i) {
//     int endindx = store.length;
//     int left = leftfind(i);
//     int right = rightfind(i);
//     int shiftindx;
//     while (left <= endindx) {
//       if (right <= endindx && store[right] < store[left]) {
//         shiftindx = left;
//       } else {
//         shiftindx = right;
//       }
//       if (store[i] > store[shiftindx]) {
//         swapingfun(store, i, shiftindx);
//         i = shiftindx;
//         left = leftfind(i);
//       } else {
//         return;
//       }
//     }
//   }

//   shiftup(int i) {
//     int parent = parentfint(i);
//     while (i > 0 && store[parent] < store[i]) {
//       swapingfun(store, i, parent);
//       i = parent;
//       parent = parentfint(i);
//     }
//   }

//   inserts(int val) {
//     store.add(val);
//     shiftup(store.length - 1);
//   }

//   removes(int val) {
//     store.remove(val);
//     shiftdown(store.length);
//     shiftup(store.length - 1);
//   }

//   parentfint(int i) {
//     return (i - 1) ~/ 2;
//   }

//   leftfind(int i) {
//     return (i * 2) + 1;
//   }

//   rightfind(int i) {
//     return (i * 2) + 2;
//   }

//   swapingfun(List<int> store, int i, int j) {
//     int temp = store[i];
//     store[i] = store[j];
//     store[j] = temp;
//   }
// }

// getminval(Node current) {
//   if (current.left == null) {
//     return current.data;
//   } else {
//     getminval(current.left!);
//   }
// }

// class Node {
//   int? data;
//   Node? left, right;
//   Node(this.data);
// }

// class Binary {
//   Node? root;
//   insert(int val) {
//     Node? newval = Node(val);
//     if (root == null) {
//       root = newval;
//     }
//     Node? current = root;
//     while (true) {
//       if (newval.data! < current!.data!) {
//         if (current.left == null) {
//           current.left = newval;
//           break;
//         } else {
//           current = current.left;
//         }
//       } else if (newval.data! > current.data!) {
//         if (current.right == null) {
//           current.right = newval;
//           break;
//         } else {
//           current = current.right;
//         }
//       }
//     }
//   }

//   search(int val) {
//     Node? current = root;
//     while (current != null) {
//       if (val == current.data) {
//         return true;
//       }
//       if (val < current.data!) {
//         current = current.left;
//       } else if (val > current.data!) {
//         current = current.right;
//       }
//       return false;
//     }
//   }

//   remove(int val) {
//     removehelper(val, root, null);
//   }

//   removehelper(int val, Node? current, Node? parent) {
//     while (current != null) {
//       if (val < current.data!) {
//         parent = current;
//         current = current.left;
//       } else if (val > current.data!) {
//         parent = current;
//         current = current.right;
//       } else {
//         if (current.left != null && current.right != null) {
//           current.data = getminval(current.right);
//           removehelper(current.data!, current.right, current);
//         } else {
//           if (parent == null) {
//             if (current.left == null) {
//               root = current.right;
//             } else {
//               root = current.left;
//             }
//           } else if (parent.left == current) {
//             if (current.right == null) {
//               parent.left = current.left;
//             } else {
//               parent.left = current.right;
//             }
//           } else if (parent.right == current) {
//             if (current.right == null) {
//               parent.right = current.left;
//             } else {
//               parent.right = current.right;
//             }
//           }
//         }
//       }
//     }
//   }

//   closest(int target) {
//     Node? current = root;
//     int closest = current!.data!;
//     while (current != null) {
//       if ((target - closest).abs() > (target - current.data!)) {
//         closest = current.data!;
//       }
//       if (target < current.data!) {
//         current = current.left;
//       }
//       if (target > current!.data!) {
//         current = current.right;
//       } else {
//         break;
//       }
//     }
//     return closest;
//   }

//   // bstOrNot(Node? root) {
//   //   int k = 0;
//   //   inOrders(Node? root) {
//   //     if (root != null) {
//   //       inOrders(root.left);
//   //       if (k > root.data!) {
//   //         print('its not bst');
//   //         return false;
//   //       }
//   //       inOrders(root.right);
//   //     }
//   //   }

//   inorder() {
//     inorders(root);
//   }

//   inorders(Node? node) {
//     if (node != null) {
//       inorders(node.left);
//       print(node.data);
//       inorders(node.right);
//     }
//   }

//   preorder() {
//     preorders(root);
//   }

//   preorders(Node? node) {
//     if (node != null) {
//       print(node.data);
//       preorders(node.left);
//       preorders(node.right);
//     }
//   }
// }

// getminval(Node? current) {
//   if (current!.left == null) {
//     return current.data;
//   } else {
//     getminval(current.left);
//   }
// }

// class Nodes {
//   Nodes? left, right;
//   int? data;
//   Nodes(this.data);
// }

// class Testbinarys {
//   Nodes? root;
//   insert(int val) {
//     Nodes? newval = Nodes(val);
//     if (root == null) {
//       root = newval;
//     }
//     Nodes? current = root;
//     while (true) {
//       if (newval.data! < current!.data!) {
//         if (current.left == null) {
//           current.left = newval;
//           break;
//         } else {
//           current = current.left;
//         }
//       } else if (newval.data! > current.data!) {
//         if (current.right == null) {
//           current.right = newval;
//           break;
//         } else {
//           current = current.right;
//         }
//       }
//     }
//   }

//   search(int val) {
//     Nodes? current = root;
//     while (current != null) {
//       if (val == current.data) {
//         return true;
//       }
//       if (val < current.data!) {
//         current = current.left;
//       } else if (val > current.data!) {
//         current = current.right;
//       }
//     }
//     return false;
//   }

//   remove(int val) {}
//   removehelper(int val, Nodes? current, Nodes? parent) {
//     while (current != null) {
//       if (val < current.data!) {
//         parent = current;
//         current = current.left;
//       } else if (val > current.data!) {
//         parent = current;
//         current = current.right;
//       } else {
//         if (current.left != null && current.right != null) {
//           // current.data = getminval(current.right);
//           removehelper(current.data!, current.right, current);
//         } else if (parent == null) {
//           if (current.right == null) {
//             root = current.left;
//           } else {
//             root = current.right;
//           }
//         } else {
//           if (parent.left == current) {
//             if (current.right == null) {
//               parent.left = current.left;
//             } else {
//               parent.left = current.right;
//             }
//           } else {
//             if (parent.right == current) {
//               if (current.right == null) {
//                 parent.right = current.left;
//               } else {
//                 parent.right = current.right;
//               }
//             }
//           }
//         }
//       }
//     }
//   }

//   closest(int target) {
//     Nodes? current = root;
//     int closest = current!.data!;
//     while (current != null) {
//       if ((target - closest).abs() > (target - current.data!)) {
//         closest = current.data!;
//       }
//       if (target < current.data!) {
//         current = current.left;
//       }
//       if (target > current!.data!) {
//         current = current.right;
//       } else {
//         break;
//       }
//     }
//     return closest;
//   }

//   bool areEqual(Nodes? root1, Nodes? root2) {
//     // If both trees are empty, they are equal
//     if (root1 == null && root2 == null) {
//       return true;
//     }

//     // If one tree is empty and the other is not, they are not equal
//     if (root1 == null || root2 == null) {
//       return false;
//     }

//     // Compare the data of the current nodes
//     if (root1.data != root2.data) {
//       return false;
//     }

//     // Recursively check the left and right subtrees
//     return areEqual(root1.left, root2.left) &&
//         areEqual(root1.right, root2.right);
//   }

//   inorder() {
//     inorders(root);
//   }

//   inorders(Nodes? node) {
//     if (node != null) {
//       inorders(node.left);
//       print(node.data);
//       inorders(node.right);
//     }
//   }

//   bstornot() {
//     int k = 0;
//     inoder(Nodes? node) {
//       if (node != null) {
//         inoder(node.left);
//         if (k > node.data!) {
//           print('its not bst');
//           return false;
//         }
//         inoder(node.right);
//       }
//       print('its bst');
//       return false;
//     }
//   }
// }

// // void main() {
// //   // Create an instance of the Testbinarys class
// //   Testbinarys testBinarys = Testbinarys();

// //   // Insert elements into the first binary tree
// //   testBinarys.insert(1);
// //   testBinarys.insert(2);
// //   testBinarys.insert(3);
// //   testBinarys.insert(4);
// //   testBinarys.insert(5);
// //   testBinarys.insert(6);
// //   testBinarys.insert(7);

// //   // Create the first binary tree (root1)
// //   Nodes? root1 = testBinarys.root;

// //   // Clear the existing binary tree in the testBinarys instance
// //   testBinarys.root = null;

// //   // Insert elements into the second binary tree
// //   testBinarys.insert(1);
// //   testBinarys.insert(2);
// //   testBinarys.insert(3);
// //   testBinarys.insert(4);
// //   testBinarys.insert(5);
// //   testBinarys.insert(6);
// //   testBinarys.insert(8); // Different from root1

// //   // Create the second binary tree (root2)
// //   Nodes? root2 = testBinarys.root;

// //   // Call the function to compare the trees and print the result
// //   bool equal = testBinarys.areEqual(root1, root2);
// //   print("The trees are ${equal ? 'equal' : 'not equal'}.");
// // }

// class Bnode {
//   Bnode? left, right;
//   int? data;
//   Bnode(this.data);
// }

// class Againbinary {
//   Bnode? root;
//   insert(int val) {
//     Bnode? newval = Bnode(val);
//     if (root == null) {
//       root = newval;
//     }
//     Bnode? current = root;
//     while (true) {
//       if (newval.data! < current!.data!) {
//         if (current.left == null) {
//           current.left = newval;
//           break;
//         } else {
//           current = current.left;
//         }
//       } else if (newval.data! > current.data!) {
//         if (current.right == null) {
//           current.right = newval;
//           break;
//         } else {
//           current = current.right;
//         }
//       }
//     }
//   }

//   search(int val) {
//     Bnode? current = root;
//     while (current != null) {
//       if (val == current.data!) {
//         return true;
//       } else if (val < current.data!) {
//         current = current.left;
//       } else if (val > current.data!) {
//         current = current.right;
//       }
//     }
//     return false;
//   }

//   removehelper(int val, Bnode? current, Bnode? parent) {
//     while (current != null) {
//       if (val < current.data!) {
//         parent = current;
//         current = current.left;
//       } else if (val > current.data!) {
//         parent = current;
//         current = current.right;
//       } else {
//         if (current.left != null && current.right != null) {
//           current.data = getsmall(current.right);
//           removehelper(current.data!, current.right, current);
//         } else {
//           if (parent == null) {
//             if (current.left == null) {
//               root = current.right;
//             } else {
//               root = current.left;
//             }
//           } else if (parent.left == current) {
//             if (current.left == null) {
//               parent.left = current.right;
//             } else {
//               parent.left = current.left;
//             }
//           } else {
//             if (parent.right == current) {
//               if (current.left == null) {
//                 parent.left = current.right;
//               } else {
//                 parent.left = current.left;
//               }
//             }
//           }
//         }
//       }
//     }
//   }

// closestval(int target) {
//   Bnode? current = root;
//   int closest = current!.data!;
//   while (current != null) {
//     if ((closest - target).abs() > (target - current.data!)) {
//       closest = current.data!;
//     }
//     if (target < current.data!) {
//       current = current.left;
//     } else if (target > current.data!) {
//       current = current.right;
//     } else {
//       break;
//     }
//   }
//   return closest;
// }

//   bstornot() {
//     int k = 0;
//     inorder(Bnode? node) {
//       if (node != null) {
//         inorder(node.left);
//         if (k > node.data!) {
//           print('its not bst');
//           return false;
//         }
//         inorder(node.right);
//       }
//       return false;
//     }
//   }
// }

// getsmall(Bnode? current) {
//   while (current != null) {
//     if (current.left == null) {
//       return current.data;
//     } else {
//       getsmall(current.left);
//     }
//   }
// }

import 'dart:math';

class Binarysnode {
  Binarysnode? left, right;
  int? val;
  Binarysnode(this.val);
}

class Binaryserch {
  Binarysnode? root;

  insert(int val) {
    Binarysnode? newval = Binarysnode(val);
    if (root == null) {
      root = newval;
    }
    Binarysnode? current = root;
    while (true) {
      if (newval.val! < current!.val!) {
        if (current.left == null) {
          current.left = newval;
          break;
        } else {
          current = current.left;
        }
      } else if (newval.val! > current.val!) {
        if (current.right == null) {
          current.right = newval;
          break;
        } else {
          current = current.right;
        }
      }
    }
    return;
  }

  search(int val) {
    Binarysnode? current = root;
    while (current != null) {
      if (val == current.val) {
        return true;
      } else if (val < current.val!) {
        current = current.left;
      } else if (val > current.val!) {
        current = current.right;
      }
    }
    return false;
  }

  findsec() {
    Binarysnode? current = root;
    while (current != null) {
      if (current.right == null) {
        return current.val;
      } else {
        current = current.right;
      }
    }
  }
}

// void main() {
//   Binaryserch value = Binaryserch();
//   value.insert(23);
//   value.insert(23);
//   value.insert(23);
//   print(value.search(23));
//   // print(value.findsec());
// }

class Person {
  int id;
  String name;
  Person(this.id, this.name);
}

class TreeNode {
  Person person;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.person);
}

class BinarySearchTree {
  TreeNode? root;

  void insert(Person person) {
    root = _insertRecursively(root, person);
  }

  TreeNode? _insertRecursively(TreeNode? node, Person person) {
    if (node == null) {
      return TreeNode(person);
    }

    // Assuming you're inserting based on the person's id
    if (person.id < node.person.id) {
      node.left = _insertRecursively(node.left, person);
    } else if (person.id > node.person.id) {
      node.right = _insertRecursively(node.right, person);
    }

    return node;
  }

  void inorderTraversal(TreeNode? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print("ID: ${node.person.id}, Name: ${node.person.name}");
      inorderTraversal(node.right);
    }
  }

  height(TreeNode? root) {
    if (root == null) {
      return 0;
    }
    int leftheight = height(root.left);
    int rightheight = height(root.right);
    int myheight = max(leftheight, rightheight);
    return myheight;
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();

  // Inserting Person objects into the binary search tree
  bst.insert(Person(5, "Alice"));
  bst.insert(Person(3, "Bob"));
  bst.insert(Person(8, "Charlie"));
  bst.insert(Person(1, "David"));
  bst.insert(Person(4, "Eve"));
  bst.insert(Person(7, "Frank"));
  bst.insert(Person(9, "Grace"));

  // Perform inorder traversal to display the BST
  print("Inorder traversal:");
  bst.inorderTraversal(bst.root);
}
