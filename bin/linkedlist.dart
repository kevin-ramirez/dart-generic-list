import'collection.dart';

class LinkedList<T> extends Collection {

  // allows the usage of myObj[0] for a linked list object, where myObj[0] will
  // be the first node or the head node
  @override
  operator [](int index) {
    // TODO: implement []
    if (index < 0 || index > size) {
      throw("Out of bounds");
    }

    int counter = 0;
    Node? tempHead = head;
    while(counter != index) {
      tempHead = tempHead?.next;
      counter++;
    }

    return tempHead?.getData();
  }

  // copy the receiver into a new linked list object and returns that object
  @override
  LinkedList copy() {
    // TODO: implement copy
    var newList = LinkedList<T>();
    Node? tempHead = head;
    while(tempHead != null) {
      newList.add(tempHead.getData());
      tempHead = tempHead.next;
    }

    return newList;
  }

  // Iterates through the linked list and prints the values
  @override
  void printString() {
    Node? tempHead = head;
    while (tempHead != null) {
      print(tempHead.getData());
      tempHead = tempHead.next;
    }
  }

  // adds nodes to the linked list with the given value. duplicates are not allowed.
  @override
  void add(val) {
    // TODO: implement add

    if (head == null) {
      head = Node(val);
      setSize();
      return;
    }

    Node? curr = head;
    while(curr?.next != null) {
      if (curr?.getData() == val) {
        return;
      }
      curr = curr?.next;
    }

    curr?.next = Node(val);
    setSize();

  }
}
