class Node {
  int? data;
  Node? left, right;
  Node(this.data);
}

class Binaryrec {
  Node? root;
  insert(Node? root, int val) {
    Node? newval = Node(val);
    if (root == null) {
      root = newval;
      return root;
    }
    if (newval.data! < root.data!) {
      root.left = insert(root.left, val);
    } else if (newval.data! > root.data!) {
      root.right = insert(root.right, val);
    }
    return root;
  }

  printrange(Node root, int high, int low) {
    if (root == null) {
      return 0;
    }
    if (root.data! >= low && root.data! <= high) {
      printrange(root.left!, high, low);
      print(root.data);
      printrange(root.right!, high, low);
    } else if (root.data! >= high) {
      printrange(root.left!, high, low);
    } else if (root.data! <= low) {
      printrange(root.right!, high, low);
    }
  }

  inordersuccessor(Node node) {
    while (root!.left != null) {
      root = root!.left!;
    }
    return root;
  }

  inorder(Node? node) {
    if (node != null) {
      inorder(node.left);
      print("${node.data} ");
      print('');
      inorder(node.right);
    }
  }
}

void main() {
  Binaryrec tree = Binaryrec();
  tree.root = tree.printrange(tree.root!, 5, 7);
  tree.root = tree.insert(tree.root, 9);
  tree.root = tree.insert(tree.root, 3);
  tree.root = tree.insert(tree.root, 17);
  tree.root = tree.insert(tree.root, 12);
  tree.root = tree.insert(tree.root, 4);
  tree.root = tree.insert(tree.root, 6);
  tree.root = tree.insert(tree.root, 18);
  // tree.inorder(tree.root);
}

class Person {
  int? id;
  String? name;
  Person(this.id, this.name);
}

class PersonNode {
  Person? person;
  PersonNode? left, right;
  PersonNode(this.person);
}

class Binaryobjectid {
  PersonNode? root;
  isert(Person person) {
    root = insertionrec(root, person);
  }

  insertionrec(PersonNode? node, Person person) {
    if (node == null) {
      return PersonNode(person);
    }
    if (person.id! < node.person!.id!) {
      node.left = insertionrec(node.left, person);
    } else if (person.id! > node.person!.id!) {
      node.right = insertionrec(node.right, person);
    }
    return node;
  }

  void inorderTraversal(PersonNode? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print("ID: ${node.person!.id}, Name: ${node.person!.name}");
      inorderTraversal(node.right);
    }
  }
}

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
