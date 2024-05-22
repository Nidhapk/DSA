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

  insertAtEnd(dynamic data) {
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

  printLinkedList() {
    int count = 0;
    Node? current = head;
    while (current != null) {
      print(current.data);
      count++;
      current = current.next;
    }
    if (count == 0) {
      print("Empty");
    }
  }

  deleteLinkedList(int value) {
    if (head == null) {
      print('empty list');
    return;
    } 
      Node? currentNode = head;
      Node? prev = null;
      while (currentNode != null) {
        if (currentNode.data == value) {
          if (prev == null) {
            head = currentNode.next;
          } else {
            prev.next = currentNode.next;
          }
          return;
        } else {
          prev = currentNode;
          currentNode = currentNode.next;
        }
      }
      print("nothing matches to delete");
    
  }
}

void main() {
  LinkedList linkedlist = LinkedList();
  linkedlist.insertAtEnd(2);
  linkedlist.insertAtEnd(3);
  print('Linked List before deletion:');
  linkedlist.printLinkedList();
  print('Linked List after deletion');
  linkedlist.deleteLinkedList(3);
  linkedlist.printLinkedList();
}
