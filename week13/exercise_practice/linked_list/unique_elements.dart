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
  int count = 0;
  addafter(List<int> dataList) {
    for (int data in dataList) {
      Node? newNode = Node(data);
      count++;

      if (head == null) {
        head = newNode;
      } else {
        Node? currentNode = head;
        while (currentNode?.next != null) {
          currentNode = currentNode?.next;
        }
        currentNode?.next = newNode;
        newNode.prev = currentNode;
      }
    }
  }

  List<int> duplicates() {
    List<int> uniquelist = [];

    Node? current = head;
    while (current != null) {
      bool? unique = true;
      Node? next = head;
      while (next != null) {
        if (next != current && current.data == next.data) {
          unique = false;
          break;
        }
        next = next.next;
      }
      if (unique == true) {
        uniquelist.add(current.data!);
      }
      current = current.next;
    }
    return uniquelist;
  }

  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      print('prev ${current.prev?.data}');
      print('next ${current.next?.data}');

      current = current.next;
    }
  }
}

void main() {
  LinkedList l = LinkedList();
  l.addafter([1, 2, 3, 4, 5, 5, 2, 5, 1]);
  print('     llll    ${l.duplicates()}');
}
