import 'dart:math';

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

  findHeight() {
   return getHeight(root);
  }

  getHeight(Node? current) {
    if (current == null) {
      return 0;
    } else {
      int leftHeight = getHeight(current.left);
      int rightheight = getHeight(current.right);
      return 1 + max(leftHeight, rightheight);
    }
  }
}

void main() {
  BST bst = BST();
  bst.insert(9);
  bst.insert(7);
  bst.insert(10);
  bst.insert(22);
  print(bst.findHeight());
}
