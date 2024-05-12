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
    Node newnode = Node(data);
    newnode.next = head;
    head = newnode;
  }


  printLinkedList() {
    Node? currentNode = head;
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.next;
    }
    print('Empty list');
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.addData(4);
  linkedList.addData(2);
  linkedList.addData(3);
  print("linked List ");
  linkedList.printLinkedList();
}
