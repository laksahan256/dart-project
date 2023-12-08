void main() {
  final myLinkedList = LinkedList(10);
  myLinkedList.append(5);
  myLinkedList.append(16);
  print(myLinkedList.head);

}

class LinkedList {
  LinkedList(value) : head = {'value': value, 'next': null} {
    tail = head;
    length = 1;
  }
  Map head;
  Map? tail;
  int length = 1;

  append(value) {
    final Map newNode = {'value': value, 'next': null};
    head['next'] = newNode;
    tail = newNode;
  }

}