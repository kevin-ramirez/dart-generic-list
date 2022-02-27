import'collection.dart';
import 'linkedlist.dart';

void main(List<String> arguments) {

  var myList = LinkedList<String>();
  myList.add("Kevin");
  myList.add("James");
  myList.add("Donald");
  myList.add("Kevin");

  print("Testing printString");
  myList.printString();
  print("Checking size -- should be 3");
  print(myList.size);

  var copiedList = myList.copy();
  print("Testing copy method by printing contents");
  copiedList.printString();
  print("Copied size should be 3");
  print(copiedList.size);

  print("Testing contains method, should be true then false");
  print(myList.contains("James"));
  print(myList.contains("Dan"));

  print("Testing cascading on linked list object");
  var myOther = LinkedList<String>()
  ..add("Kevin")
  ..add("James")
  ..add("Donald");
  myOther.printString();

  print("Testing equals method with first list created and a new list should return true then false");
  print(myList.equals(myOther));
  myList.add("Danny");
  print(myList.equals(myOther));
}
