import'collection.dart';

class LinkedList<T> extends Collection {

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

  @override
  void printString() {
    Node? tempHead = head;
    while (tempHead != null) {
      print(tempHead.getData());
      tempHead = tempHead.next;
    }
  }

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
      curr = curr?.next;
    }

    curr?.next = Node(val);
    setSize();

  }




}
