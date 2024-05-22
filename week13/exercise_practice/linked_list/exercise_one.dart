/**delete a node at given index from a Doubly linkedList */
class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data, {this.next, this.prev});
}

class LinkedList {
  Node? head;
  LinkedList() {
    head = null;
  }
  adddata(List<int> dataList) {
    for (int data in dataList) {
      Node? newNode = Node(data);
      if (head == null) {
        head = newNode;
      } else {
        Node? current = head;
        while (current?.next != null) {
          current = current?.next;
        }
        current?.next = newNode;
        newNode.prev = current;
      }
    }
  }

  delete(int index, int length) {
    if (head == null) {
      print('empty list');
      return;
    } else if (index < length) {
      Node? current = head;
      Node? prev = null;
      for (int i = 0; i < length; i++) {
        if (i == index) {
          if (prev == null) {
            head = current?.next;
            current?.next?.prev = prev;
            return;
          } else {
            prev.next = current?.next;
            current?.next?.prev = prev;
            return;
          }
        } else {
          prev = current;
          current = current?.next;
        }
      }
    } else {
      print('index out of range!!!nothing to delete');
      return;
    }
  }

  int count = 0;
  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      count++;
      //print('prev=${current.prev?.data}');
      current = current.next;
    }
  }
}

void main() {
  LinkedList l = LinkedList();
  l.adddata([1, 2, 3, 4, 5]);
  l.printList();
  print("***********after");
  int length = l.count;
  l.delete(3, length);
  l.printList();
}
