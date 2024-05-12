class SinglyNode {
  dynamic data;
  SinglyNode? next;
  SinglyNode(this.data, {this.next});
}

class DoublyNode {
  dynamic data;
  DoublyNode? next;
  DoublyNode? prev;
  DoublyNode(this.data, {this.next, this.prev});
}

void main() {
  SinglyNode node1 = SinglyNode(1);
  SinglyNode node2 = SinglyNode(3);
  SinglyNode node3 = SinglyNode(2);
  SinglyNode node4 = SinglyNode(5);
  SinglyNode node5 = SinglyNode(4);
  node1.next = node3;
  node2.next = node5;
  node3.next = node2;
  node4.next = null;
  node5.next = node4;

  DoublyNode node6 = DoublyNode(1);
  DoublyNode node7 = DoublyNode(4);
  DoublyNode node8 = DoublyNode(3);
  DoublyNode node9 = DoublyNode(2);
  node6.prev = null;
  node6.next = node9;
  node7.prev = node8;
  node7.next = null;
  node8.prev = node9;
  node8.next = node7;
  node9.prev = node6;
  node9.next = node8;
  print("Singly Linked List");
  printSinglyLinkedList(node1);
  print("Doubly Linked List");
  printDoublyLinkedList(node6);
}

printSinglyLinkedList(SinglyNode? node) {
  SinglyNode? newNode = node;
  while (newNode != null) {
    print(newNode.data);
    newNode = newNode.next;
  }
}

printDoublyLinkedList(DoublyNode? node) {
  DoublyNode? newNode = node;
  while (newNode != null) {
    print(newNode.data);
    newNode = newNode.next;
  }
}
