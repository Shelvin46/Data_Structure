class ListNode {
  int value;
  ListNode? next;
  ListNode({required this.value});
}

ListNode? head = null;
ListNode? tail = null;

void main() {
  addingNode(4);
  addingNode(5);
  addingNode(3);
  addingNode(7);
  insertion(3, 10);
  insertion(7, 11);
  addingNode(12);
  addingNode(7);
  addingNode(3);
  removeDuplicates();
  sortLinkedList();
  // display();
  // middleElement();

  // reversedLinkedList();
  // largest();
}

void addingNode(int data) {
  ListNode? newNode = ListNode(value: data);
  if (head == null) {
    head = newNode;
  } else {
    tail?.next = newNode;
  }
  tail = newNode;
}

void display() {
  ListNode? temp = head;
  if (head == null) {
    print("No Values");
    return;
  }
  while (temp != null) {
    print(temp.value);
    temp = temp.next;
  }
}

void delete(int data) {
  ListNode? temp = head;
  ListNode? prev = null;
  if (temp != null && temp.value == data) {
    head = temp.next;
    return;
  }
  while (temp != null && temp.value != data) {
    prev = temp;
    temp = temp.next;
  }
  if (temp == null) {
    return;
  }
  if (temp == tail) {
    tail = prev;
    tail?.next = null;
    return;
  }
  prev?.next = temp.next;
}

void insertion(int nextTo, int data) {
  ListNode newNode = new ListNode(value: data);
  ListNode? current = head;
  if (head != null && head?.value == nextTo) {
    newNode.next = head?.next;
    head?.next = newNode;
    return;
  }
  while (current != null && current.value != nextTo) {
    current = current.next;
  }
  if (current == tail) {
    tail?.next = newNode;
    tail = newNode;
    tail?.next = null;
    return;
  }
  newNode.next = current?.next;
  current?.next = newNode;
  //4-->5-->3-->7
}

void middleElement() {
  dynamic middleCount = 0;
  dynamic forCount = 0;
  dynamic finalCount = 0;
  ListNode? temp = head;
  ListNode? temp1 = head;
  while (temp != null) {
    middleCount++;
    temp = temp.next;
  }
  if (middleCount.isEven) {
    forCount = middleCount / 2;
  } else {
    forCount = (middleCount + 1) / 2;
  }
  // print(forCount);
  while (temp1 != null) {
    finalCount++;
    if (forCount == finalCount) {
      // print(temp1.value);
      return;
    }
    temp1 = temp1.next;
  }
}

void removeDuplicates() {
  //4-->5-->3-->7-->10-->11-->12-->7-->3
  ListNode? current = head;
  while (current != null) {
    ListNode? prev = current;
    ListNode? nextTo = current.next;
    while (nextTo != null) {
      if (current.value == nextTo.value) {
        prev?.next = nextTo.next;
      } else {
        prev = nextTo;
      }
      nextTo = nextTo.next;
    }
    current = current.next;
  }
}

void reversedLinkedList() {
  ListNode? prev = null;
  ListNode? temp = head;
  while (temp != null) {
    ListNode? next = temp.next;
    temp.next = prev;
    prev = temp;
    temp = next;
  }
  ListNode? temp1 = prev;
  while (temp1 != null) {
    print(temp1.value);
    temp1 = temp1.next;
  }
}

void largest() {
  ListNode value;
  ListNode? temp = head;
}


//4-->5-->3-->10-->7-->11-->12==3,4,5,7,10,11,12
void sortLinkedList() {}
