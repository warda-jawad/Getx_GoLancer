// import 'package:flutter/material.dart';
// import 'package:helloworld/Controller/home_page_controller.dart';
// import 'package:helloworld/View/page1.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     HomePageController controller = Get.put(HomePageController());
//
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Introduction to Getx"),
//         ),
//         body: GetBuilder<HomePageController>(
//             init: HomePageController(),
//             builder: (controller) {
//               print("home page");
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Center(
//                         child: IconButton(
//                           onPressed: () {
//                             print("++++");
//                             controller.increment();
//                           },
//                           icon: Icon(Icons.add),
//                         ),
//                       ),
//                       Text("${controller.counter}"),
//                       IconButton(
//                         onPressed: () {
//                           print("-----");
//                           controller.decrement();
//                         },
//                         icon: Icon(Icons.minimize),
//                       ),
//                     ],
//                   ),
//                   TextButton(
//                       onPressed: () {
//                         Get.to(() => Page1());
//                       },
//                       child: Text("Go to page 1"))
//                 ],
//               );
//             }));
//   }
// }
///
///
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/View/page1.dart';
import 'package:helloworld/View/page2.dart';
import 'package:helloworld/utils/bindings.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // HomePageController controller = Get.put(
//   HomePageController(),
// );

// final controller = Get.lazyPut(() => HomePageController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction to Getx"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Get.to(() => Page1(), binding: bindings());
                },
                child: Text(
                  "Open page 1 ",
                  style: TextStyle(fontSize: 30),
                )),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Get.to(() => Page2());
                },
                child: Text(
                  "Open page 2 ",
                  style: TextStyle(fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
