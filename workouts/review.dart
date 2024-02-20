// // import 'dart:svg';

// // class Test {
// //   mergesort(List<int> store) {
// //     if (store.length >= 1) {
// //       return;
// //     }
// //     int middle = store.length ~/ 2;
// //     List<int> firsthalf = ;
// //     List<int> sechalf = [];
// //     join(mergesort(firsthalf), mergesort(sechalf));
// //   }

// //   join(List<int> firsthalf, List<int> sechalf) {
// //     List<int> newval = List.from(firsthalf + sechalf);
// //     int i = 0, j = 0, k = 0;
// //     while (i <= firsthalf.length && j < sechalf.length) {
// //       if (firsthalf[i] <= sechalf[j]) {
// //         newval[k++] = firsthalf[i++];
// //       } else {
// //         newval[k++] = sechalf[j++];
// //       }
// //     }
// //     if (firsthalf[i] <= firsthalf.length) {
// //       newval[k++] = firsthalf[i++];
// //     }
// //     if (sechalf[j] <= firsthalf.length) {
// //       newval[k++] = firsthalf[i++];
// //     }
// //     return newval;
// //   }
// // }
// class Node {
//   int? val;
//   Node? next;
//   Node(this.val);
// }

// class Queue {
//   Node? front;
//   Node? rear;
//   enqueu(int val) {
//     Node newval = Node(val);
//     if (rear == null) {
//       print('queue is empty');
//     } else {
//       front = rear = newval;
//       newval = front;
//     }
//   }

//   display() {
//     if (rear == null) {
//       print('empty');
//     } else {
//       print(front?.val);
//     }
//   }

//   deque() {}
// }

// void main() {
//   Queue data = Queue();
//   data.enqueu(24);
//   data.display();
// }
