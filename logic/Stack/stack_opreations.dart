void main() {
  push(23);
  push(5);
  push(4);
  push(10);
  display();
}

class StackNode {
  dynamic data;
  StackNode? next;
  StackNode({required this.data});
}

StackNode? top;
void push(dynamic data) {
  StackNode? newNode = StackNode(data: data);
  if (top == null) {
    top = newNode;
    return;
  } else {
    newNode.next = top;
    top = newNode;
  }
}

void pop() {
  if (top == null) {
    print("Stack Underflow");
    return;
  } else {
    top = top?.next;
  }
}

void display() {
  StackNode? current = top;
  if (top == null) {
    print('Stack Underflow');
    return;
  } else {
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
