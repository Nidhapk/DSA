class Node {
  dynamic data;
  Node? next;
  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;
  LinkedList() {
    head = null;
  }
  addData(dynamic data) {
  Node newNode = Node(data);
  if (head == null) {
    head = newNode;
  } else {
    Node? current = head;
    while (current?.next != null) {
      current = current?.next;
    }
    current?.next = newNode;
  }
}

  printLinkedList() {
    Node? currentNode = head;
    while(currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.next;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.addData(1);
  linkedList.addData(2);
  linkedList.addData(3);
  linkedList.printLinkedList();
}
