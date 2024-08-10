class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data, {this.left, this.right});
}

class BST {
  Node? root;
  insert(int data) {
    Node newNode = Node(data);
    if (root == null) {
      root = newNode;
    } else {
      Node? current = root;
      while (true) {
        if (data < current!.data) {
          if (current.left == null) {
            return current.left = newNode;
          } else {
            current = current.left;
          }
        } else {
          if (current.right == null) {
            return current.right = newNode;
          } else {
            current = current.right;
          }
        }
      }
    }
  }

  validate() {
   return validateHel(root);
  }

  validateHel(Node? current) {
    if(current != null && current.left!=null && current.right !=null) {
      if (current.data > current.left!.data ||
          current.data < current.right!.data) {
        return false;
      }
      validateHel(current.left);
      validateHel(current.right);
    }
    return true;
  }
}

void main() {
  BST bst = BST();
  bst.insert(3);
  bst.insert(5);

  print(bst.validate());
}
