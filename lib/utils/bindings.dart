import 'package:get/get.dart';
import 'package:helloworld/Controller/home_page_controller.dart';

class bindings implements Bindings {
  @override
  void dependencies() {
    // Get.put(HomePageController(), permanent: true);

    Get.lazyPut(() => HomePageController(), fenix: true);
  }
}
