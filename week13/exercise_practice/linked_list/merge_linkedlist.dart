/**Dart program to merge two linked list*/
 
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
  void addData(List<dynamic> dataList) { //fun for adding data to linkedlist
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
      }
    }
  }

  void mergeList(LinkedList l1, LinkedList l2) { //fun for merging two linkedlist 
    Node? currentNode1 = l1.head;//represent head of first linked list
    Node? currentNode2 = l2.head;//represent head of second linked list
    if (currentNode1 != null) {
      while (currentNode1?.next != null) {// checking if it is not the end node
        currentNode1 = currentNode1?.next;//if not end node currentNode will be the next node
      }
      currentNode1?.next = currentNode2;//if end node ,connects end node  with head of second node 
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {

  //creating two linked lists named l1 and l2
  LinkedList l1 = LinkedList();
  LinkedList l2 = LinkedList();

  l1.addData([1, 2, 3, 45]);//ading data to l1
  l2.addData([4, 5, 6]);//adding data to l2
  print('list1');
  l1.printList();
  print('list2');
  l2.printList();
  print('merged');
  LinkedList().mergeList(l1, l2);// calling the fun to merge
  l1.printList();// printing l1 after merging or you can create an new linked list named l3 and assign value of l1 to it
}

