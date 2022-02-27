import 'linkedlist.dart';

abstract class Collection<T> extends Object{
  Node<T>? head;
  int _size = 0;

  Collection();

  void add(T val);
  LinkedList<T> copy();
  T operator[](int index);
  void printString();

  void map(Function fn) {
  }

  // Method will check to see if an arbitrary object is in the linked list
  // returning true if found or false if not found.
  bool contains(Object val) {
    Node<T>? tempHead = head;
    while(tempHead != null) {
      if (tempHead.getData() == val) {
        return true;
      }

      tempHead = tempHead.next;
    }
    return false;
  }

  // Method will check to see if both the receiver and the arbitrary object casted
  // into the linked list subclass are equal. Will false if not equal else will return true
  bool equals(Object val) {
    Node<T>? temp = head;
    var t = val as LinkedList<T>;
    int size = 0;
    while(temp != null) {
      size++;
      temp = temp.next;
    }

    if (size != t.size) {
      return false;
    }

    Node<T>? newTemp = head;
    for (int i = 0; i < t.size; i++) {
      if (t[i] != newTemp?.getData()) {
        return false;
      }
      newTemp = newTemp?.next;
    }
    return true;
  }

  int get size => _size;

  // Increments the counter keeping track of the size for the linked list
  void setSize() {
    _size++;
  }

}

// This class will contain the node information for the linked list
// this linked list will be a single-linked list with only a next pointer
class Node<T> {
  Node<T>? next;
  late T _data;

  Node(T info) {
    _data = info;
  }

  getData() {
    return _data;
  }

}