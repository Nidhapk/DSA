class Node {
  dynamic data;
  Node? link;
  Node(this.data, {this.link});
}

class LinkedList {
  Node? head;
  LinkedList() {
    head = null;
  }

  void addData(List<dynamic> dataList) {
    for (int data in dataList) {
      Node? newNode = Node(data);
      if (head == null) {
        head = newNode;
      } else {
        Node? currentNode = head;
        while (currentNode?.link != null) {
          currentNode = currentNode?.link;
        }
        currentNode?.link = newNode;
      }
    }
  }

  void addAfter(dynamic value, List<dynamic> dataList) {
    Node? currentNode = head;
    while (currentNode != null) {
      if (currentNode.data == value) {
        for (int data in dataList) {
          Node? newNode = Node(data);
          newNode.link = currentNode.link;
          currentNode.link = newNode;
        }
        return;
      }
      currentNode = currentNode.link;
    }
    print("No such value found to delete");
  }

  void addBefore(dynamic value, List<dynamic> dataList) {
    for (int data in dataList) {
      Node? newNode = Node(data);
      newNode.link = head;
      head = newNode;
    }
  }
  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.link;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.addData([1, 3, 2]);
  print("Before Adding");
  linkedList.printList();
  print('After Adding');
  linkedList.addAfter(3, [5, 6]); //adding new elements[5,6] after 3
  linkedList.addBefore(2, [0, 7]);//adding new elements[0,7] before 2
  linkedList.printList();
}
