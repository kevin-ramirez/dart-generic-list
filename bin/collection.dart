import 'linkedlist.dart';

abstract class Collection<T> extends Object{
  Node<T>? head;
  int _size = 0;

  Collection();

  void add(T val);
  LinkedList<T> copy();
  T operator[](int index);
  void printString();

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

  bool equals(Object val) {
    return false;
  }

  int get size => _size;

  void setSize() {
    _size++;
  }

}

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