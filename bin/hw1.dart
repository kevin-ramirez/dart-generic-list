import'collection.dart';
import 'linkedlist.dart';

// void test({int? hey}){
//
// }
//
// double printMe([List<int>? c,int?a]) {
//   double sum = 0.0;
//   if (c != null && a != null) {
//     if (c.length <= a) {
//       for(int i = 0; i < c.length; i++) {
//         sum += c[i];
//       }
//       return sum;
//     } else {
//       int i = 0;
//       while(i != a) {
//         sum += c[i];
//         i++;
//       }
//       return sum;
//     }
//   }
//   return sum;
// }

void main(List<String> arguments) {
  // print('Hello world!');
  // var list = [1, 2, 3, 4, 5, 6];
  // print(printMe(list, 2));
  // test(hey: 1);
  // final int t;
  // t = 1;

  // ---------------------------------- //


  var myList = LinkedList<String>();
  myList.add("Kevin");
  myList.add("James");
  myList.add("Donald");
  myList.add(1);

  myList.printString();
  print(myList.size);
  //print(myList[1]);

  var copiedList = myList.copy();
  copiedList.printString();
  print(copiedList.size);

  print(myList.contains("James"));
  print(myList.contains(1));
  // var myOther = LinkedList<int>()
  // ..add(1)
  // ..add(2);
  // myOther.printString();
}
