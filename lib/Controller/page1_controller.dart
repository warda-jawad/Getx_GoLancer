import 'package:get/get.dart';

class Page1Controller extends GetxController {
  RxInt counter1 = 0.obs;
  RxInt counter2 = 0.obs;
  RxInt sum = 0.obs;

  void increment1() {
    counter1++;
    // update();
  }

  void increment2() {
    counter2++;
    // update();
  }

  void summ() {
    sum.value = counter1.value + counter2.value;
    // update();
  }
}
