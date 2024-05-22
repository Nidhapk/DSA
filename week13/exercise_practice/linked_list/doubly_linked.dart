// class Node {
//   int? data;
//   Node? next;
//   Node? prev;
//   Node(this.data, {this.next, this.prev});
// }

// class LinkedList {
//   Node? head;
//   LinkedList() {
//     head = null;
//   }

//   addDataAfter(List<int> dataList) {
//     for (int data in dataList) {
//       Node? newNode = Node(data);
//       if (head == null) {
//         head = newNode;
//       } else {
//         Node? currentNode = head;
//         while (currentNode?.next != null) {
//           currentNode = currentNode?.next;
//         }
//         currentNode?.next = newNode;
//         newNode.prev = currentNode;
//       }
//     }
//   }

//   adddataBefore(int data) {
//     Node? newNode = Node(data);
//     newNode.next = head;
//     if (head != null) {
//       head?.prev = newNode;
//     }
//     head = newNode;
//   }

//   printList() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   LinkedList linkedList = LinkedList();
//   linkedList.adddataBefore(1);
//   linkedList.adddataBefore(3);
//   linkedList.printList();
// }
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
  adddataBefore(List<int> dataList) {
    for (var data in dataList) {
      Node? newNode = Node(data);
      newNode.next = head;
      if (head != null) {
        head?.prev = newNode;
      }
      head = newNode;
    }
  }

  addAfter(List<int> dataList) {
    for (var data in dataList) {
      Node? newNode = Node(data);
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

  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.addAfter([1, 2, 3, 4, 5, 6]);
  linkedList.printList();
}
