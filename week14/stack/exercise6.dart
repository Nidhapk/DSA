/**delete a specific node from stack(stack implented using LinkedList) */
class Node {
  int data;
  Node? next;
  Node(this.data, {this.next});
}

class stack {
  Node? top;
  stack() {
    top = null;
  }
  push(List<int> dataList) {
    for (var data in dataList) {
      Node? newNode = Node(data);
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
      return null;
    } else {
      top = top?.next;
    }
  }

   delete(int target) {
    stack tempStack = stack();
    while (top != null) {
      if (top?.data != target) {
        tempStack.push([top!.data]);
      }
      pop();
    }
while (tempStack.top != null) {
      push([tempStack.top!.data]);
      tempStack.pop();
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
  stack s = stack();
  s.push([1, 2, 3, 4, 5]);
  s.printList();
  print('*****'); s.delete(2);


  s.printList();
}
