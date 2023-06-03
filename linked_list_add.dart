void main(List<String> args) {
  List<int> a = [5, 6, 6, 8, 4, 4];
  for (var i = 0; i < a.length; i++) {
    addNode(a[i]);
  }
  //largestNumber();
  
  remoneDuplicate();
  display();

}

class ListNode {
  int? val;
  ListNode? next;
  ListNode(int val) {
    this.val = val;
  }
}

ListNode? head = null;
ListNode? tail = null;
//adding new node
void addNode(int data) {
  ListNode newNode = new ListNode(data);
  if (head == null) {
    head = newNode;
  } else {
   tail?.next = newNode;
  }
  tail = newNode;
}

void display() {
  if (head == null) {
    print('empty');
    return;
  }
  ListNode? temp = head;
  while (temp != null) {
    print(temp.val);
    temp = temp.next;
  }
}

void delete(int data) {
  ListNode? temp = head;
  ListNode? prev = null;
  //deleting head
  if (temp != null && temp.val == data) {
    head = temp.next;
    return;
  }
  //deleting element between the list.
  while (temp != null && temp.val != data) {
    prev = temp;
    temp = temp.next;
    print('deleted');
  }
  if (temp == null) {
    return;
  }
  //deleting tail
  if (temp == tail) {
    tail = prev;
    tail?.next = null;
    return;
  }
  prev?.next = temp.next;
}
//inserting element after specfied element
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
    tail = newNode;
    return;
  }
  newNode.next = temp.next;
  temp.next = newNode;
}
void remoneDuplicate() {
  ListNode? current = head;
  // while (current != null) {
  //   ListNode? nextTo = current.next;
  //   while (nextTo != null) {
  //     if (current.val == nextTo.val) {
  //       //5,6,8,6,4,6
  //       nextTo.next = nextTo.next;
  //       nextTo = nextTo.next;
  //     }
  //     nextTo = nextTo?.next;
  //   }
  //   current = current.next;
  // }
  while (current != null) {
    ListNode? nextTo = current.next;
    while (nextTo != null && current.val == nextTo.val) {
      nextTo = nextTo.next;
    }
    if (tail == nextTo && current.val == nextTo?.val) {
      tail = current;
      tail?.next == null;
      return;
    }
    current.next = nextTo;
    current = nextTo;
  }
}
void middleElement(int data) {
  ListNode? newNode = ListNode(data);
  int count = 0;
  double a = 0;
  int counter = 0;
  ListNode? temp = head;
  ListNode? tenp1 = head;
  while (temp != null) {
    count = count + 1;
    temp = temp.next;
  }
  if (count.isOdd) {
    a = (count + 1) / 2;
  } else {
    a = count / 2;
  }
  while (tenp1 != null) {
    counter = counter + 1;
    if (counter == a) {
      newNode.next = tenp1.next;
      tenp1.next = newNode;
      return;
    }
    tenp1 = tenp1.next;
  }
}
void decimaltoBinary() {
  ListNode? temp = head;
  String val = '';
  while (temp != null) {
    val = val + temp.val.toString();
    temp = temp.next;
  }
  int integerValue = int.parse(val, radix: 2);
  print(integerValue.toString());
}

void largestNumber() {
  ListNode? temp = head;
  int count = 0;
  while (temp != null) {
    if (temp.val! > count) {
      count = temp.val!;
    }
    temp = temp.next;
  }
  print(count);
}

