import 'package:get/get.dart';

class CounterModel extends GetxController {
  // extends GetX state management
  final _count = 0.obs; // initialize the variable (private)

  int get count => _count.value; // getter

  void increment() {
    // setter
    _count.value++;
    update(); // update the view
  }
}
