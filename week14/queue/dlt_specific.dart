/**delete specific node from queue */
class Node {
  int? data;
  Node? next;
  Node(this.data, {this.next});
}

class Queue {
  Node? rear;
  Node? front;
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
    } else {
      front = front?.next;
      if (front == null) {
        rear = null;
      }
    }
  }

  delete(int value) {
    Queue q1 = Queue();
    bool found = false;
    while (front != null) {
      if (front!.data != value) {
        q1.enqueue(front!.data!);
      } else {
        found = true;
      }
      dequeue();
    }
    while (q1.front != null) {
      enqueue(q1.front!.data!);
      q1.dequeue();
    }
    if (found == false) {
      return "No such value";
    }
  }

  display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

class stack {
  Node? top;
  push(int value) {
    Node? newNode = Node(value);
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

  delete(int value) {
    Queue q = Queue();
    bool found = false;
    while (top != null) {
      if (top?.data != value) {
        q.enqueue(top!.data!);
      } else {
        found = true;
      }
      pop();
    }
    while (q.front != null) {
      push(q.front!.data!);
      q.dequeue();
    }
    if (found == false) {
      return "NO such element";
    }
  }

  display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  stack s = stack();
  s.push(3);
  s.push(5);
  s.push(25);
  s.delete(5);
  s.display();
  print('*********');
  Queue q = Queue();
  q.enqueue(9);
  q.enqueue(8);
  q.enqueue(10);
 q.delete(9);
  q.display();
}
