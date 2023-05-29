// // import 'package:flutter/materialget_core/src/get_main.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:helloworld/Routes/product1.dart';
// import 'package:helloworld/Routes/product2.dart';
// import 'package:provider/provider.dart';
//
// import 'cart.dart';
//
// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => Cart(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(" GetX  State management  "),
//           backgroundColor: Colors.green[700],
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   Get.to(() => ProductPage1());
//                   // Navigator.of(context).push(
//                   //     MaterialPageRoute(builder: (context) => ProductPage1()));
//                 },
//                 child: Text("Open page 1"),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 Get.to(() => ProductPage2());
//                 // Navigator.of(context).push(
//                 //     MaterialPageRoute(builder: (context) => ProductPage2()));
//               },
//               child: Text("Open page 2"),
//             ),
//             TextButton(
//               onPressed: () {
//                 Get.back(); // mayPop
//                 // Navigator.of(context).pop();
//               },
//               child: Text("BACK"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// GETX AS A STATE MANAGEMETN

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Introduction to GetX"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 250),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  Text("numbers"),
                  IconButton(onPressed: () {}, icon: Icon(Icons.minimize)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
