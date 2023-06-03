void main(List<String> args) {
  addNode(13);
  addNode(14);
  addNode(15);
  addNode(16);
  addNode(18);
  insertion(16, 20);

  displayReverse();
}

class ListNode {
  int? val;
  ListNode? next;
  ListNode? prev;
  ListNode(int val) {
    this.val = val;
  }
}

ListNode? head = null;
ListNode? tail = null;
void addNode(int data) {
  ListNode newNode = ListNode(data);
  if (head == null) {
    head = newNode;
  } else {
    tail?.next = newNode;
    newNode.prev = tail;
  }
  tail = newNode;
}

void displayReverse() {
  ListNode? temp = tail;

  while (temp != null) {
    print(temp.val);
    temp = temp.prev;
  }
}

//deletion of a node
void deletion(int data) {
  //deletion of head
  if (head != null && head?.val == data) {
    head = head?.next;
    return;
  }

  //deletion between linkedlist
  ListNode? temp = head, previous = null;
  while (temp != null && temp.val != data) {
    previous = temp;
    temp = temp.next;
  }

  if (tail?.val == data) {
    tail = previous;
    tail?.next = null;
    return;
  }

  if (temp == null) {
    // print("ithil illa");
    return;
  }
  previous?.next = temp.next;
  temp.prev = previous;
}

//inserting element after specified element
void insertion(int nextTo, int data) {
  ListNode newNode = ListNode(data);
  ListNode? temp = head;
  while (temp != null && temp.val != nextTo) {
    temp = temp.next;
  }
  if (temp == null) {
    return;
  }
  if (temp == tail) {
    tail?.next = newNode;
    tail?.prev = temp.next;
    tail = newNode;
    return;
  }
  newNode.next = temp.next;
  temp.next?.prev = newNode;
  // newNode.prev = temp.next;
  temp.next = newNode;
  newNode.prev = temp;
}
