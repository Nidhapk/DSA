import 'dart:io';

class Node {
  int data;
  Node? next;
  Node(this.data, {this.next});
}

class LinkedList {
  Node? rear;
  Node? front;
  LinkedList() {
    rear = front = null;
  }
  enqueqe(List<int> dataList) {
    for (var data in dataList) {
      Node? newNode = Node(data);
      if (rear == null) {
        rear = front = newNode;
      } else {
        rear?.next = newNode;
        rear = newNode;
      }
    }
  }

  dequeue() {
    if (front == null) {
      print('empty');
    } else {
      front = front?.next;
    }
  }

  reverse() {
    front = rear;
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  printList() {
    Node? current = front;
    while (current != null) {
      stdout.write('${current.data} ');
      current = current.next;
    }
  }
}

void main() {
  LinkedList l = LinkedList();
  l.enqueqe([1, 2, 3, 4]);
  l.printList;
  print('***********');
  l.printList();
}
