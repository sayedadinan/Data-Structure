class Node {
  int val;
  Node? left, right;
  Node(this.val);
}

class Biaryserach {
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

  searches(int val) {
    return search(val, root);
  }

  search(int val, Node? root) {
    if (root == null) {
      return false;
    }
    Node? current = root;
    if (val == current.val) {
      return true;
    }
    if (val < current.val) {
      return search(val, root.left!);
    } else if (val > current.val) {
      return search(val, root.right!);
    }
  }

  cloesest(int targest) {
    Node? curreent = root;
    int closest = curreent!.val;
    while (curreent != null) {
      if ((targest - closest).abs() > (targest - curreent.val)) {
        closest = curreent.val;
      }
      if (targest < curreent.val) {
        curreent = curreent.left;
      } else if (targest > curreent.val) {
        curreent = curreent.right;
      } else {
        break;
      }
    }
    return closest;
  }

  bsyval() {
    List<int> store = [];
    inorders(store, root);
    for (int i = 1; i < store.length; i++) {
      if (store[i] <= store[i - 1]) {
        return false;
      }
    }
    return true;
  }

  inorders(List<int> store, Node? node) {
    if (node == null) {
      return;
    }
    inorders(store, node.left);
    store.add(node.val);
    inorders(store, node.right);
  }

  secondlargest() {
    if (root == null || root!.left == null && root!.right == null) {
      return null;
    }
    while (root != null) {
      if (root!.right != null &&
          root!.right!.left == null &&
          root!.right!.right == null) {
        return root!.val;
      } else if (root!.right != null &&
          root!.right!.right == null &&
          root!.right!.left != null) {
        return findlar(root!.right!.left!);
      } else if (root!.right == null && root!.left != null) {
        return findlar(root!.left!);
      }
      root = root!.right;
    }
    return null;
  }

  findlar(Node node) {
    while (node.right != null) {
      node = node.right!;
    }
    return node.val;
  }
}

void main() {
  Biaryserach tree = Biaryserach();
  tree.insert(23);
  tree.insert(33);
  tree.insert(13);
  tree.insert(2);
  print(tree.searches(13));
  print(tree.cloesest(22));
  print(tree.secondlargest());
  print(tree.bsyval());
}
