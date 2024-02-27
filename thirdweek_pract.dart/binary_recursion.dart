class Node {
  int? data;
  Node? left, right;
  Node(this.data);
}

// class Binaryrec {
//   Node? root;
//   insert(Node? root, int val) {
//     Node? newval = Node(val);
//     if (root == null) {
//       root = newval;
//       return root;
//     }
//     if (newval.data! < root.data!) {
//       root.left = insert(root.left, val);
//     } else if (newval.data! > root.data!) {
//       root.right = insert(root.right, val);
//     }
//     return root;
//   }

//   printrange(Node root, int high, int low) {
//     if (root == null) {
//       return 0;
//     }
//     if (root.data! >= low && root.data! <= high) {
//       printrange(root.left!, high, low);
//       print(root.data);
//       printrange(root.right!, high, low);
//     } else if (root.data! >= high) {
//       printrange(root.left!, high, low);
//     } else if (root.data! <= low) {
//       printrange(root.right!, high, low);
//     }
//   }

//   inordersuccessor(Node node) {
//     while (root!.left != null) {
//       root = root!.left!;
//     }
//     return root;
//   }

//   inorder(Node? node) {
//     if (node != null) {
//       inorder(node.left);
//       print("${node.data} ");
//       print('');
//       inorder(node.right);
//     }
//   }
// }

// // void main() {
// //   Binaryrec tree = Binaryrec();
// //   tree.root = tree.printrange(tree.root!, 5, 7);
// //   tree.root = tree.insert(tree.root, 9);
// //   tree.root = tree.insert(tree.root, 3);
// //   tree.root = tree.insert(tree.root, 17);
// //   tree.root = tree.insert(tree.root, 12);
// //   tree.root = tree.insert(tree.root, 4);
// //   tree.root = tree.insert(tree.root, 6);
// //   tree.root = tree.insert(tree.root, 18);
// //   // tree.inorder(tree.root);
// // }

// class Person {
//   int? id;
//   String? name;
//   Person(this.id, this.name);
// }

// class PersonNode {
//   Person? person;
//   PersonNode? left, right;
//   PersonNode(this.person);
// }

// class Binaryobjectid {
//   PersonNode? root;
//   isert(Person person) {
//     root = insertionrec(root, person);
//   }

//   insertionrec(PersonNode? node, Person person) {
//     if (node == null) {
//       return PersonNode(person);
//     }
//     if (person.id! < node.person!.id!) {
//       node.left = insertionrec(node.left, person);
//     } else if (person.id! > node.person!.id!) {
//       node.right = insertionrec(node.right, person);
//     }
//     return node;
//   }

//   void inorderTraversal(PersonNode? node) {
//     if (node != null) {
//       inorderTraversal(node.left);
//       print("ID: ${node.person!.id}, Name: ${node.person!.name}");
//       inorderTraversal(node.right);
//     }
//   }
// }

// void main() {
//   Binaryobjectid tree = Binaryobjectid();
//   tree.isert(Person(2, 'adnan'));
//   tree.isert(Person(1, 'najin'));
//   tree.isert(Person(4, 'jasir'));
//   tree.isert(Person(8, 'fouzan'));
//   tree.isert(Person(3, 'justin'));
//   tree.isert(Person(4, 'jaseem'));
//   tree.inorderTraversal(tree.root);
// }
class TreeNode {
  int? value;
  TreeNode? left, right;
  TreeNode(this.value);
}

class BST {
  int count = 0;
  int result = 0;
  kthsmallest(int k) {
    inorder(root!, k);
    return result;
  }

  inorder(TreeNode? root, int k) {
    if (root == null) return;
    inorder(root.left!, k);
    count++;
    if (count == k) {
      result = root.value!;
      return;
    }
    inorder(root.right!, k);
  }

  TreeNode? root;
  insert(int val) {
    root = _insert(root, val);
  }

  TreeNode? _insert(TreeNode? node, int val) {
    if (node == null) {
      return TreeNode(val);
    }
    if (val < node.value!) {
      node.left = _insert(node.left, val);
    } else if (val > node.value!) {
      node.right = _insert(node.right, val);
    }
    return node;
  }

  int? secondLargest() {
    TreeNode? current = root;
    while (current != null) {
      if (current.right != null &&
          current.right!.left == null &&
          current.right!.right == null) {
        return current.value;
      } else if (current.right != null) {
        current = current.right;
        while (current!.right!.right != null) {
          current = current.right;
        }
        if (current.right == null) {
          current = current.left;
          while (current!.right != null) {
            current = current.right;
          }
          return current.value;
        }
        return current.value;
      }
      if (current.right == null) {
        return current.left!.value;
      }
      current = current.right;
    }
    return null;
  }
}

void main() {
  BST bst = BST();
  bst.insert(10);
  bst.insert(9);
  bst.insert(7);
  bst.insert(8);
  // bst.insert(14);
  // bst.insert(13);
  bst.insert(11);
  bst.insert(12);
  bst.kthsmallest(3);

  int k = 3; // Specify the value of K
  int kthSmallestElement = bst.kthsmallest(k);
  print("The $k-th smallest element in the BST is: $kthSmallestElement");
  // bst.root = bst.insert(bst.root, 9);
  // bst.root = TreeNode(10);
  // bst.root!.left = TreeNode(9);
  // bst.root!.right = TreeNode(13);
  // bst.root!.right!.right = TreeNode(14);
  // bst.root!.right!.left = TreeNode(12);
  // bst.root!.left!.right = TreeNode(8);
  // bst.root!.left!.left = TreeNode(7);
  // bst.root!.right!.left = TreeNode(15);

  int? secondLargest = bst.secondLargest();
  if (secondLargest != null) {
    print("Second largest value in the BST: $secondLargest");
  } else {
    print("BST does not have a second largest value.");
  }
}
