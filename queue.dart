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
  // if (rear == null) {
  //   print('Queue Underflow');
  //   return;
  // } else {
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}
