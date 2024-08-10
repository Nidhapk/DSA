class node {
  String data;
  node? left, right;
  node(this.data);
}

class BST {
  node? root;

  void add(String data) {
    node newnode = node(data);
    if (root == null) {
      root = newnode;
    } else {
      node? temp = root;
      while (temp != null) {
        if (data == temp.data) {
          return;
        } else {
          if (data.length > temp.data.length) {
            if (temp.right == null) {
              temp.right = newnode;
              return;
            } else {
              temp = temp.right;
            }
          } else if (data.length < temp.data.length) {
            temp.left = newnode;
            return;
          } else {
            temp = temp.left;
          }
        }
      }
    }
  }

  findlargest(node? root) {
    while (root!.right != null) {
      root = root.right;
    }
    return root.data;
  }

  indrotr(node? root) {
    print('');
    indrotravesel(root);
  }

  indrotravesel(node? root) {
    if (root != null) {
      indrotravesel(root.left);
      print(root.data);
      indrotravesel(root.right);
    }
  }

  secondlargestword(node? root) {
    if (root!.right == null && root.left != null) {
      return findlargest(root.left);
    }
    if (root.right != null &&
        root.right!.left == null &&
        root.right!.right == null) {
      return root.data;
    }
    return secondlargestword(root.right);
  }
}

void main() {
  BST bst = BST();
  bst.add('banana');
  bst.add('apple');
  bst.add('orange');
  bst.add('pinapple');
  bst.indrotr(bst.root);
  print('${bst.findlargest(bst.root)} it is the first largest');
  print('${bst.secondlargestword(bst.root)} it is second largest');
}