import 'dart:collection';

void main(List<String> args) {
  enQueue(10);
  enQueue(20);
  enQueue(30);
  deQueue();
  deQueue();
  deQueue();
  enQueue(10);
  display();
}

class queueNode {
  int? data;
  queueNode? next;
  queueNode(int val) {
    this.data = val;
  }
}

queueNode? front;
queueNode? rear;
void enQueue(int data) {
  // adding data into queue.
  queueNode newNode = queueNode(data);
  if (rear == null) {
    front = rear = newNode;
  } else {
    rear?.next = newNode;
    rear = newNode;
  }
}

void deQueue() {
  if (front == null) {
    print('Stack Underflow');
  }
  front = front?.next;
  if (front == null) {
    rear = null;
  }
}

void display() {
  queueNode? current = front;
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

// Set a = {};
