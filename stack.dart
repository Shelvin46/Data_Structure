void main(List<String> args) {
  pushNode(20);
  pushNode(30);
  pushNode(24);
  pushNode(5);
  pushNode(6);
  //middleElement();

  display();
}

class StackNode {
  int? val;
  StackNode? next;
  StackNode(int val) {
    this.val = val;
  }
}

StackNode? top; //instead of head

void pushNode(int data) {
  StackNode newNode = StackNode(data);
  if (top == null) {
    top = newNode;
  } else {
    newNode.next = top;
    top = newNode;
  }
}

void popNode() {
  if (top == null) {
    print('Stack Underflow');
    return;
  }
  top = top?.next;
}

void display() {
  StackNode? current = top;
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}

// void middleElement() {
//   StackNode? current = top;
//   StackNode? current1 = top;
//   double mid;
//   int count1 = 0;
//   int count2 = 0;
//   while (current != null) {
//     count1++;
//     current = current.next;
//   }
//   if (count1.isOdd) {
//     mid = count1 + 1 / 2;
//   } else {
//     mid = count1 / 2;
//   }
//   while (current1 != null) {
//     count2++;
//     if (count2 == mid) {
//       print(current1.val);
//     }
//     current1 = current1.next;

//   }
// }
