import 'dart:math';

import '../stack.dart';

void main() {
  pushNode(3);
  pushNode(6);
  pushNode(4);
  pushNode(10);
  display();
}

class Node {
  int value;
  Node? next;
  Node({required this.value});
}

// jnfcg
Node? top;
void pushNode(int data) {
  Node newNode = Node(value: data);
  Node? temp = top;
  if (top == null) {
    top = newNode;
  } else {
    newNode.next = temp;
    top = newNode;
  }
}

void popNode() {
  if (top == null) {
    print("Stack underFlow");
    return;
  } else {
    top = top?.next;
  }
}

void display() {
  Node? temp = top;
  while (temp != null) {
    print(temp.value);
    temp = temp.next;
  }
}

//
void pushInto(int nextTo, int data) {
  if (top == null) {
    print("Stack Underflow");
    return;
  }
  Node? temp = top;
  while (temp != null && temp.value != nextTo) {}
}
