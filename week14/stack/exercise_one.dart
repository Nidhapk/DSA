class Node {
  int data;
  Node? next;
  Node({required this.data, this.next});
}

class LinkedList {
  Node? top;
  LinkedList() {
    top = null;
  }
  push(List<int> dataList) {
    for (var data in dataList) {
      Node? newNode = Node(data: data);
      if (top == null) {
        top = newNode;
      } else {
        newNode.next = top;
        top = newNode;
      }
    }
  }

  pop() {
    if (top == null) {
      print('empty');
    } else {
      top = top?.next;
    }
  }

  printList() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList l = LinkedList();
  l.push([7, 4, 5, 0]);
  l.printList();
  print('***********');
  l.pop();
  l.printList();
}
