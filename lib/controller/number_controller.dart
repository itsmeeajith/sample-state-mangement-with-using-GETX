import 'package:get/get.dart';

class NumberController extends GetxController {
  RxList<int> numbers = <int>[1, 2, 3, 4].obs;

  void increment() {
    numbers.add(numbers.last + 1);
  }
}
