class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data, {this.next, this.prev});
}

int count = 0;

class LinkedList {
  Node? head;
  Node? tail;
  LinkedList() {
    head = tail = null;
  }
  addAfter(List<int> dataList) {
    for (int data in dataList) {
      Node? newNode = Node(data);
      count++;
      if (head == null) {
        head = tail = newNode;
      } else {
        tail?.next = newNode;
        newNode.prev = tail;
        tail = newNode;
      }
    }
  }

  addBefore(List<int> dataList) {
    for (int data in dataList) {
      Node? newNode = Node(data);
      head?.prev = newNode;
      newNode.next = head;
      head = newNode;
    }
  }

  deleteNode() {
    Node? prev = null;
    if (head == null) {
      return 'Empty list';
    } else {
      Node? current = head;
      while (current != null) {
        if (current == head) {
          if (prev == null) {
            head = head?.next;
            return;
          } else {
            prev.next = current.next;
            tail = prev;
          }
        } else {
          prev = current;
          current = current.next;
        }
      }
    }
  }

  reverse() {
    if (head == null) {
      return 'empty';
    } else if (head?.next == null) {
      return;
    } else {
      Node? prev = null;
      Node? current = head;
      while (current != null) {
        Node? temp = current.next;
        current.next = prev;
        prev = current;
        current = temp;
      }
      head = prev;
    }
  }

  mergeList(LinkedList l2) {
    if (tail?.next == null) {
      tail?.next = l2.head;
      l2.head?.prev = tail;
      tail = l2.tail;
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

// main() {
//   LinkedList l = LinkedList();
//   LinkedList l2 = LinkedList();
//   l2.addAfter([0, 0, 0]);
//   l.addAfter([1, 2, 3, 4, 5, 6, 8]);
//   l.printList();
//   print('****************');
//   // l.deleteNode();
//   // l.deleteNode();
//   // l.addBefore([0, 3]);
//   // l.printList();
//   print('******');
//   l.mergeList(l2);
//   l.printList();
// }

class Binary {
  binary(List<int> list, int target) {
    int start = 0;
    int end = list.length - 1;
    while (start <= end) {
      int middle = (start + end) ~/ 2;
      if (list[middle] == target) {
        
        return middle;
      } else if (list[middle] >= target) {
        end = middle - 1;
      } else {
        start = middle + 1;
      }
    }
    return 'Nothing found';
  }
}

void main() {
  Binary b = Binary();
  print(b.binary([1, 2, 2,2,3,5], 2));
}
