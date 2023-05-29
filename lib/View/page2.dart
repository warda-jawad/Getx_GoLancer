// import 'package:flutter/material.dart';

// import 'package:helloworld/Controller/page1_controller.dart';
//
// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);
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

///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/Controller/home_page_controller.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  HomePageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // GetX<HomePageController>(
        //     // init: HomePageController(),
        //     builder: (controller) {
        //       return Center(
        //           child: Text(
        //         "${controller.counter}",
        //         style: TextStyle(fontSize: 30, color: Colors.blue),
        //       ));
        //     }),
        Center(
            child: Text(
          "${controller.counter}",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ))
      ]),
    );
  }
}
