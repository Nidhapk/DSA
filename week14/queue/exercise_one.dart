class Node {
  int data;
  Node? next;
  Node(this.data, {this.next});
}

class stack {
  Node? top = null;
  push(int data) {
    Node? newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  pop() {
    if (top == null) {
      return;
    } else {
      top = top?.next;
    }
  }
}

class Queue {
  Node? front = null;
  Node? rear = null;
  enqueue(int data) {
    Node? newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  dequeue() {
    if (front == null) {
      return;
    } else if (front == rear) {
      front = rear = null;
    } else {
      front = front?.next;
    }
  }

  display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
//to reverse an queue using stack
  reversed() {
    stack temp = stack();
    while (front != null) {
      temp.push(front!.data);
      dequeue();
    }
    while (temp.top != null) {
      enqueue(temp.top!.data);
      temp.pop();
    }
  }
}

void main() {
  Queue q = Queue();
  q.enqueue(9);
  q.enqueue(3);
  q.enqueue(7);
  q.display();
  print('************');
  q.reversed();
  q.display();
}
