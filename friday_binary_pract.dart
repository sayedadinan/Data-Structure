class Node {
  int val;
  Node? left, right;
  Node(this.val);
}

class Binary {
  Node? root;
  insert(int val) {
    root = insertrec(val, root);
  }

  insertrec(int val, Node? node) {
    if (node == null) {
      return Node(val);
    }
    if (val < node.val) {
      node.left = insertrec(val, node.left);
    } else if (val > node.val) {
      node.right = insertrec(val, node.right);
    }
    return node;
  }

  search(int val) {
    return searchhelp(val, root);
  }

  searchhelp(int val, Node? node) {
    if (node == null) {
      return false;
    }
    if (val == node.val) {
      return true;
    }
    if (val < node.val) {
      return searchhelp(val, node.left);
    } else if (val > node.val) {
      return searchhelp(val, node.right);
    }
    return false;
  }

  bstornot() {
    List<int> store = [];
    inorder(store, root);
    for (int i = 1; i < store.length; i++) {
      if (store[i] <= store[i - 1]) {
        return false;
      }
    }
    return true;
  }

  inorder(List<int> store, Node? node) {
    if (node == null) {
      return;
    }
    inorder(store, node.left);
    store.add(node.val);
    inorder(store, node.right);
  }

  inorders(Node? node) {
    if (node != null) {
      inorders(node.left);
      print("${node.val} ");
      print('');
      inorders(node.right);
    }
  }

  closest(int target) {
    Node? current = root;
    int closest = current!.val;
    while (current != null) {
      if ((closest - target).abs() > (target - current.val)) {
        closest = current.val;
      }
      if (target < current.val) {
        current = current.left;
      } else if (target > current.val) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }

  secondlarge() {
    Node? current = root;
    while (current != null) {
      if (current.right != null &&
          current.right!.left != null &&
          current.right!.right != null) {
        return current.val;
      } else if (current.right != null &&
          current.right!.left != null &&
          current.right!.right == null) {
        return findgrate(current.right!.left!);
      } else if (current.right == null && current.left != null) {
        return findgrate(current.left!);
      }
      current = current.right;
    }
    return null;
  }

  findgrate(Node current) {
    while (current.right != null) {
      current = current.right!;
    }
    return current.val;
  }

  findsmallest() {
    Node? current = root;
    Node? smallest = null;
    while (current != null) {
      if (current.right != null && current.left != null) {
        if (current.left!.val <= current.val &&
            current.right!.val >= current.val) {
          if (smallest == null || smallest.val > current.val) {
            smallest = current;
          }
        }
      }
      if (current.left != null) {
        current = current.left;
      } else if (current.right != null) {
        current = current.right;
      } else {
        break;
      }
    }
    if (smallest == null) {
      throw Exception('Smallest parent not found in the BST');
    }
    return smallest.val;
  }
}

void main() {
  Binary tree = Binary();
  // tree.insert(91);
  // tree.insert(84);
  tree.insert(0);
  tree.insert(1);
  tree.insert(15);
  tree.insert(2);
  tree.search(4);
  tree.inorders(tree.root);
  // print(tree.bstornot());
  print(tree.search(44));
  print(tree.closest(85));
  print(tree.secondlarge());
  // print(tree.findsmallest());
}

// class TreeNode {
//   int val;
//   TreeNode left;
//   TreeNode right;

//   TreeNode(this.val, [this.left, this.right]);
// }

// bool areIdentical(TreeNode root1, TreeNode root2) {
//   if (root1 == null && root2 == null) {
//     return true;
//   }
//   if (root1 == null || root2 == null) {
//     return false;
//   }
//   return (root1.val == root2.val) &&
//       areIdentical(root1.left, root2.left) &&
//       areIdentical(root1.right, root2.right);
// }

// void main() {
//   // Constructing two binary trees
//   var tree1 = TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3));
//   var tree2 = TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3));

//   // Comparing the two trees
//   if (areIdentical(tree1, tree2)) {
//     print("The trees are identical.");
//   } else {
//     print("The trees are not identical.");
//   }
// }
