import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxInt counter = 0.obs;
  // int counter = 0;

  void increment() {
    counter++;
    // update();
  }

  void decrement() {
    counter--;
    // update();
  }

  @override
  void onInit() {
    //// initail State
    print("On Init");
  }

  @override
  void onReady() {
    // build widget
    print("On Ready");
  }

  @override
  void onClose() {
    // dispose
    print("On Close");
    super.onClose();
  }
}
