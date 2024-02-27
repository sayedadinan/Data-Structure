class Person {
  int? id;
  String? name;
  Person(this.id, this.name);
}

class Treenode {
  Person person;
  Treenode? left, right;
  Treenode(this.person);
}

class Binaryperson {
  Treenode? root;
//***********************************************************inserting funtion*************************************************/
  Treenode? insertrec(Person person, Treenode? node) {
    if (node == null) {
      return Treenode(person);
    }
    if (person.id! < node.person.id!) {
      node.left = insertrec(person, node.left);
    } else if (person.id! > node.person.id!) {
      node.right = insertrec(person, node.right);
    }
    return node;
  }

  void insert(Person person) {
    root = insertrec(person, root);
  }

//************************************binary search object searching it is there or not************************************* */
  bool search(Person person, Treenode? root) {
    if (root == null) {
      return false;
    }
    if (person.id == root.person.id) {
      return true;
    }
    if (person.id! < root.person.id!) {
      return search(person, root.left);
    }
    if (person.id! > root.person.id!) {
      return search(person, root.right);
    }
    return false;
  }

//***************************************binary seearch tree inorder traversel like a sorted tree******************************** */
  void inorderTraversal(Treenode? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print("ID: ${node.person.id}, Name: ${node.person.name}");
      inorderTraversal(node.right);
    }
  }

//****************************************************removing node from binary search ******************************************** */
  remove(Person person) {}
  removing(Person person, Treenode? current, Treenode? parent) {
    if (current == null) {
      return;
    }
    while (true) {
      if (person.id! < current!.person.id!) {
        parent = current;
        current = current.left;
      } else if (person.id! > current.person.id!) {
        parent = current;
        current = current.right;
      } else {
        if (current.left != null && current.right != null) {
          current.person.id = getminval(current.right!);
          removing(current.person, current.right, current);
        } else {
          if (parent == null) {}
        }
      }
    }
  }

  getminval(Treenode node) {
    if (node.left == null) {
      return node.person.id;
    } else {
      getminval(node.left!);
    }
  }
}

// void main() {
//   Binaryperson tree = Binaryperson();
//   tree.insert(Person(2, 'adnan'));
//   tree.insert(Person(6, 'jasir'));
//   tree.insert(Person(5, 'jaseem'));
//   tree.insert(Person(1, 'fouzan'));
//   print(tree.search(Person(2, 'jaseem'), tree.root));
//   tree.inorderTraversal(tree.root);
// }

//****************************************the previus code is object adding to binary search tree and that searching also************************//
//*****************************************+$normal value adding to binary search tree and that operations$+*************************************//

class Testnode {
  int value;
  Testnode? left, right;
  Testnode(this.value);
}

class Binarynormal {
  Testnode? root;
  insert(int val) {
    root = insertrec(val, root);
    return root;
  }

  insertrec(int val, Testnode? node) {
    if (node == null) {
      return Testnode(val);
    }
    if (val < node.value) {
      node.left = insertrec(val, node.left);
    }
    if (val > node.value) {
      node.right = insertrec(val, node.right);
    }
    return node;
  }

  serches(int val) {
    return search(val, root);
  }

  // bool search(int val, Testnode? node) {
  //   if (node == null) {
  //     return false;
  //   }
  //   if (val == node.value) {
  //     return true;
  //   }
  //   if (val < node.value) {
  //     return search(val, node.left);
  //   } else {
  //     return search(val, node.right);
  //   }
  // }

  // bool serches(int val) {
  //   return search(val, root);
  // }

  search(int val, Testnode? node) {
    if (node == null) {
      return false;
    }
    if (val == node.value) {
      return true;
    }
    if (val < node.value) {
      return search(val, node.left);
    } else {
      return search(val, node.right);
    }
  }

  closest(int target) {
    Testnode? current = root;
    int closest = current!.value;
    while (current != null) {
      if ((closest - target).abs() > (target - current.value)) {
        closest = current.value;
      }
      if (target < current.value) {
        current = current.left;
      } else if (target > current.value) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }

  _inorder(Testnode? node) {
    if (node == null) return;
    _inorder(node.left);
    print(node.value);
    _inorder(node.right);
  }

  display() {
    _inorder(root);
  }

  bool isValidBST() {
    List<int> values = [];
    inorders(root, values);
    for (int i = 1; i < values.length; i++) {
      if (values[i] <= values[i - 1]) {
        return false;
      }
    }
    return true;
  }

  inorders(Testnode? root, List<int> list) {
    if (root == null) {
      return;
    }
    inorders(root.left, list);
    list.add(root.value);
    inorders(root.right, list);
  }

  int? secondLargest() {
    if (root == null || (root!.left == null && root!.right == null)) {
      return null;
    }
    Testnode? current = root;
    while (current != null) {
      if (current.right != null &&
          current.right!.left == null &&
          current.right!.right == null) {
        return current.value;
      } else if (current.right != null &&
          current.right!.left != null &&
          current.right!.right == null) {
        return findLargest(current.right!.left!);
      } else if (current.right == null && current.left != null) {
        return findLargest(current.left!);
      }
      current = current.right;
    }
    return null;
  }

  int findLargest(Testnode node) {
    while (node.right != null) {
      node = node.right!;
    }
    return node.value;
  }

  bstornot() {
    List<int> list = [];
    inorder(root, list);
    for (int i = 1; i < list.length; i++) {
      if (list[i] <= list[i - 1]) {
        return false;
      }
    }
    return true;
  }

  inorder(Testnode? node, List<int> list) {
    if (node == null) {
      return;
    }
    inorder(node.left, list);
    list.add(node.value);
    inorder(node.right, list);
  }

  secondlarger() {
    if (root != null || root!.right == null || root!.left == null) {
      return null;
    }
    Testnode? current = root;
    while (current != null) {
      if (current.right != null &&
          current.right!.left == null &&
          current.right!.right == null) {
        return current.value;
      } else if (current.right != null &&
          current.right!.left != null &&
          current.right!.right == null) {
        return findlarg(current.right!.left!);
      } else if (current.right == null && current.left != null) {
        return findlarg(current.left);
      }
      current = current.right;
    }
    return null;
  }

  findlarg(Testnode? current) {
    while (current!.right != null) {
      current = current.right!;
    }
    return current.value;
  }

  int findSmallestParent() {
    Testnode? current = root;
    Testnode? smallestParent = null;
    while (current != null) {
      if (current.left != null && current.right != null) {
        if (current.value > current.left!.value &&
            current.value < current.right!.value) {
          if (smallestParent == null || current.value < smallestParent.value) {
            smallestParent = current;
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

    if (smallestParent == null) {
      throw Exception('Smallest parent not found in the BST');
    }
    return smallestParent.value;
  }
}

void main() {
  Binarynormal tree = Binarynormal();
  // tree.insert(23);
  tree.insert(4);
  tree.insert(3);
  tree.insert(2);
  // tree.insert(13);
  tree.display();
  print(tree.closest(5));
  print(tree.serches(13));
  bool isValid = tree.bstornot();
  print('Is valid BST: $isValid');
  print(tree.secondLargest());
  print(tree.findSmallestParent());
}
