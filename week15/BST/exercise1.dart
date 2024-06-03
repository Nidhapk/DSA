class Node {
  int? data;
  Node? left;
  Node? right;
  Node(this.data, {this.right, this.left});
}

class BST {
  Node? root;
  BST() {
    root = null;
  }
  addData(int data) {
    Node? newNode = Node(data);
    if (root == null) {
      root = newNode;
    } else {
      Node? currentNode = root;
      while (true) {
        if (data < currentNode!.data!) {
          if (currentNode.left == null) {
            return currentNode.left = newNode;
          } else {
            currentNode = currentNode.left;
          }
        } else {
          if (currentNode.right == null) {
            return currentNode.right = newNode;
          } else {
            currentNode = currentNode.right;
          }
        }
      }
    }
  }

  contains(int target) {
    Node? current = root;
    while (current != null) {
      if (current.data == target) {
        return true;
      } else if (current.data! < target) {
        current = current.right;
      } else{
        current = current.left;
      }
    }
    return false;
  }
}

void main() {
  BST b = BST();
  b.addData(8);
  b.addData(12);
  b.addData(11);
  print(b.contains(11))
  ;
}
