// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:helloworld/Controller/page1_controller.dart';
//
// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Page1Controller controllerr = Get.put(Page1Controller());
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Page 1"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GetX<Page1Controller>(
//               init: Page1Controller(),
//               builder: (controller) {
//                 print("print 1 ");
//                 return Column(
//                   children: [
//                     Center(
//                         child: Text(
//                       "${controller.counter1.value}",
//                       style: TextStyle(fontSize: 20),
//                     )),
//                   ],
//                 );
//               }),
//           GetX<Page1Controller>(
//               // init: Page1Controller(),
//               builder: (controller) {
//             print("print 2 ");
//             return Column(
//               children: [
//                 Text(
//                   "${controller.counter2.value}",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             );
//           }),
//           GetX<Page1Controller>(
//               // init: Page1Controller(),
//               builder: (controller) {
//             print("print 3 ");
//             return Column(
//               children: [
//                 Text(
//                   "${controller.sum.value}",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             );
//           }),
//           TextButton(
//             onPressed: () {
//               controllerr.increment1();
//               controllerr.summ();
//             },
//             child: Text("Add number 1"),
//           ),
//           TextButton(
//             onPressed: () {
//               controllerr.increment2();
//               controllerr.summ();
//             },
//             child: Text("Add number 2"),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/Controller/home_page_controller.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);

  // HomePageController controller =
  //     Get.put(HomePageController(), permanent: true);

  // final controller = Get.lazyPut(() => HomePageController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        GetX<HomePageController>(
          init: HomePageController(),
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: Icon(
                      Icons.add,
                      size: 30,
                    )),
                Text(
                  "${controller.counter}",
                  style: TextStyle(fontSize: 30),
                ),
                IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: Icon(
                      Icons.minimize,
                      size: 30,
                    )),
              ],
            );
          },
        ),
      ]),
    );
  }
}
