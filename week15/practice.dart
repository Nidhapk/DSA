import 'dart:io';

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

  inOrder() {
    inOrderHelper(root);
  }

  inOrderHelper(Node? current) {
    if (current != null) {
      inOrderHelper(current.left);
      stdout.write('${current.data} ');
      inOrderHelper(current.right);
    }
  }

  postOrder() {
    postOrderHelper(root);
  }

  postOrderHelper(Node? current) {
    if (current != null) {
      postOrderHelper(current.left);
      postOrderHelper(current.right);
      stdout.write(current.data);
    }
  }

  preOrder() {
    preOrderHelper(root);
  }

  preOrderHelper(Node? current) {
    if (current != null) {
      stdout.write(current.data);
      preOrderHelper(current.left);
      preOrderHelper(current.right);
    }
  }

  remove(int data) {
    removeHelper(data, root, null);
  }

  removeHelper(int data, Node? current, Node? parent) {
    while (current != null) {
      if (data < current.data) {
        parent = current;
        current = current.left;
      } else if (data > current.data) {
        parent = current;
        current = current.right;
      } else {
        if (current.left != null && current.right != null) {
          current.data = getmin(current.right);
          removeHelper(current.data, current.right, current);
        } else {
          if (parent == null) {
            if (current.right == null) {
              root = current.left;
            } else {
              root = current.right;
            }
          } else {
            if (parent.left == current) {
              if (current.right == null) {
                parent.left = current.left;
              } else {
                parent.left = current.right;
              }
            } else {
              if (current.left == null) {
                parent.right = current.left;
              } else {
                parent.right = current.right;
              }
            }
          }
        }
        break;
      }
    }
  }

  getmin(Node? current) {
    if (current!.left == null) {
      return current.data;
    } else {
      return getmin(current.left);
    }
  }

  findClosest(int target) {
    Node? current = root;
    int? closest = current?.data;
    while (current != null) {
      if ((target - closest!).abs() > (target - current.data).abs()) {
        closest = current.data;
      }
      if (target < current.data) {
        current = current.left;
      } else if (target > current.data) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }
}

void main() {
  BST bst = BST();
  bst.insert(9);
  bst.insert(7);
  bst.insert(1);
  bst.insert(15);
 // bst.remove(15);
  bst.inOrder();
  stdout.writeln();
  bst.postOrder();
  stdout.writeln();
  bst.preOrder();
  stdout.writeln();
  print(bst.findClosest(16));
}
