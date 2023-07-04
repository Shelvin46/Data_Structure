void main() {
  adding(20);
  adding(4);
  adding(67);
  adding(3);
  adding(5);
  adding(20);
  adding(35);
  // reverseLinkedList();
  // display();
  linkedListSorting();
  display();
  // findMiddleElement();
}

//20-->4-->67-->3-->5-->20-->35

class Node {
  int value;
  Node? next;
  Node({required this.value});
}

Node? head = null;
Node? tail = null;
void adding(int data) {
  Node? temp = head;
  Node newNode = Node(value: data);

  if (head == null) {
    head = newNode;
  } else {
    tail?.next = newNode;
  }
  tail = newNode;
}

void display() {
  Node? temp = head;
  while (temp != null) {
    print(temp.value);
    temp = temp.next;
  }
}

//20-->4-->67-->3-->5-->20
void delete(int data) {
  Node? temp = head;
  Node? prev = null;
  if (head != null && head?.value == data) {
    head = head?.next;
    return;
  }
  while (temp != null && temp.value != data) {
    prev = temp;
    temp = temp.next;
  }
  if (temp == null) {
    return;
  }
  prev?.next = temp.next;
}

//20-->4-->67-->3-->5-->20-->35
void findMiddleElement() {
  Node? temp1 = head;
  Node? temp2 = head;
  while (temp2 != null && temp2.next != null) {
    temp1 = temp1?.next;
    temp2 = temp2.next?.next;
  }
  print(temp1?.value);
}

void duplicateRemove() {
  Node? temp = head;
  while (temp != null) {
    Node? prev = temp;
    Node? nextTo = temp.next;

    while (nextTo != null) {
      if (temp.value == nextTo.value) {
        prev?.next = nextTo.next;
      } else {
        prev = nextTo;
      }
      nextTo = nextTo.next;
    }
    temp = temp.next;
  }
}

//20-->4-->67-->3-->5-->20-->35
void reverseLinkedList() {
  Node? temp = head;
  Node? prev = null;
  while (temp != null) {
    Node? next = temp.next;
    temp.next = prev;
    prev = temp;
    temp = next;
  }
  Node? forTraversing = prev;
  while (forTraversing != null) {
    print(forTraversing.value);
    forTraversing = forTraversing.next;
  }
}

//20-->4-->67-->3-->5-->20-->35
void linkedListSorting() {
  Node? current = head;
  while (current != null) {
    Node? smallNode = current;
    Node? nextTo = current.next;
    while (nextTo != null) {
      if (smallNode!.value > nextTo.value) {
        smallNode = nextTo;
      }
      nextTo = nextTo.next;
    }
    int temp = smallNode!.value;
    smallNode.value = current.value;
    current.value = temp;
    current = current.next;
  }
}

void stackUsingLinkedList(int data) {}
