/**add at end using tail */
class Node {
  int? data;
  Node? next;
  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;
  Node? tail;
  LinkedList() {
    head = null;
    tail = null;
  }
  addAfter(List<int> dataList) {
    for (int data in dataList) {
      Node? newNode = Node(data);

      if (head == null) {
        head = tail = newNode;
      } else {
        tail?.next = newNode;
        tail = newNode;
      }
    }
  }

  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList l = LinkedList();
  l.addAfter([1, 2, 3, 4]);
  print('tail    ${l.tail?.data}');
  l.printList();
}
