/** Dart program to convert an List to LinkedList */

class Node { // creating node for an linkedList
  dynamic data;
  Node? next;
  Node(this.data, {this.next});
}

class LinkedList { // creating an empty linkedList
  Node? head;
  LinkedList() {
    head = null;
  }

  void insertAtEnd(dynamic data) { // fun to add element in linkedList
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? currentNode = head;
      while (currentNode?.next != null) {
        currentNode = currentNode?.next;
      }
      currentNode?.next = newNode;
    }
  }
  void printLinkedList() { //fun to print linkedList
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  List<int> list = [1, 2, 3, 4, 5];// creating an list
  LinkedList linkedList = LinkedList();
  for (int i = 0; i < list.length; i++) {
    linkedList.insertAtEnd(list[i]);// adding each element in the list to linkedList
  }
  print("Linked List");
  linkedList.printLinkedList();// calling the fun to print linkedList
}
