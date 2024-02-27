class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class KthElementFinder {
  int count = 0;
  late int result;
  kthsmallest(TreeNode root, int k) {
    inorder(root, k);
    return result;
  }

  inorder(TreeNode? node, int val) {
    if (node == null) return;
    inorder(node.left, val);
    count++;
    if (count == val) {
      result = node.val;
      return;
    }
    inorder(node.right, val);
  }
}

void main() {
  // Example usage:
  TreeNode root = TreeNode(5);
  root.left = TreeNode(3);
  root.right = TreeNode(7);
  root.left!.left = TreeNode(2);
  root.left!.right = TreeNode(4);
  root.right!.left = TreeNode(6);
  root.right!.right = TreeNode(8);

  KthElementFinder finder = KthElementFinder();
  int k = 3;
  int kthSmallestElement = finder.kthsmallest(root, k);
  print('The $k-th smallest element in the BST is: $kthSmallestElement');
}
  // int kthSmallest(TreeNode? root, int k) {
  //   _inorder(root, k);
  //   return result;
  // }

  // _inorder(TreeNode? node, int k) {
  //   if (node == null) return;

  //   _inorder(node.left, k);
  //   count++;
  //   if (count == k) {
  //     result = node.val;
  //     return;
  //   }
  //   _inorder(node.right, k);
  // }
  // class Person {
//   int? id;
//   String? name;
//   Person(this.id, this.name);
// }

// class Treenode {
//   Person person;
//   Treenode? left, right;
//   Treenode(this.person);
// }

// class Binaryperson {
//   Treenode? root;

//   Treenode? insertrec(Person person, Treenode? node) {
//     if (node == null) {
//       return Treenode(person);
//     }
//     if (person.id! < node.person.id!) {
//       node.left = insertrec(person, node.left);
//     } else if (person.id! > node.person.id!) {
//       node.right = insertrec(person, node.right);
//     }
//     return node;
//   }

//   void insert(Person person) {
//     root = insertrec(person, root);
//   }

//   bool search(Person person, Treenode? root) {
//     if (root == null) {
//       return false;
//     }
//     if (person.id == root.person.id) {
//       return true;
//     }
//     if (person.id! < root.person.id!) {
//       return search(person, root.left);
//     }
//     if (person.id! > root.person.id!) {
//       return search(person, root.right);
//     }
//     return false;
//   }

//   void inorderTraversal(Treenode? node) {
//     if (node != null) {
//       inorderTraversal(node.left);
//       print("ID: ${node.person.id}, Name: ${node.person.name}");
//       inorderTraversal(node.right);
//     }
//   }
// }

// void main() {
//   Binaryperson tree = Binaryperson();
//   tree.insert(Person(2, 'adnan'));
//   tree.insert(Person(6, 'jasir'));
//   tree.insert(Person(5, 'jaseem'));
//   tree.insert(Person(1, 'fouzan'));

//   print(tree.search(Person(5, 'jaseem'), tree.root)); // Output: true
//   tree.inorderTraversal(tree.root);
// }
