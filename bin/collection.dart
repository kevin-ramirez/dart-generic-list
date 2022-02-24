abstract class Collection<T> {
  late Node<T> head;
  int _size = 0;

  Collection();

  T add(T val);
  Node<T> copy();
  T operator[](int index);
  void printString();

  bool contains(T value) {
    return false;
  }

  bool equals(Node<T> value) {
    return false;
  }

  int get size => _size;

  void _setSize() {
    _size++;
  }

}

class Node<T> {
  late Node<T> next;
  late Node<T> prev;
  late T data;

}