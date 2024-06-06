class Queue {
  List queue = [];
  enqueue(int value) {
    queue.add(value);
  }

  dequeue() {
    if (queue.isEmpty) {
      return;
    } else {
      return queue.removeAt(0);
    }
  }
}

class StackQue {
  Queue q1 = Queue();
  Queue q2 = Queue();
  push(int value) {
    while (q1.queue.isNotEmpty) {
      q2.enqueue(q1.dequeue());
    }
    q1.enqueue(value);
    while (q2.queue.isNotEmpty) {
      q1.enqueue(q2.dequeue());
    }
    return q1.queue;
  }

  pop() {
    q1.dequeue();
  }
}

void main() {
  StackQue stack = StackQue();
  stack.push(8);
  stack.push(2);
  stack.pop();
  print(stack.q1.queue);
}
