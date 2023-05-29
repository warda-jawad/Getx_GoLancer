// // Multi provider
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Multi Proivder "),
//           backgroundColor: Colors.green,
//         ),
//         body: MultiProvider(
//           providers: [
//             ChangeNotifierProvider(create: (context) {
//               return DataModal();
//             }),
//             ChangeNotifierProvider(create: (context) {
//               return DataModal2();
//             })
//           ],
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Consumer<DataModal>(
//                   builder: (context, datamodel, child) {
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [Text(datamodel.name)],
//                     );
//                   },
//                 ),
//               ),
//               Consumer<DataModal2>(
//                 builder: (context, datamodel, child) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Text(datamodel.name2)],
//                   );
//                 },
//               ),
//               Consumer<DataModal>(
//                 builder: (context, datamodel, child) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextButton(
//                           onPressed: () {
//                             datamodel.changeName();
//
//                             print(datamodel.name);
//                           },
//                           child: Text("Change the first name  "))
//                     ],
//                   );
//                 },
//               ),
//               Consumer<DataModal2>(
//                 builder: (context, datamodel, child) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextButton(
//                           onPressed: () {
//                             datamodel.changeName2();
//
//                             print(datamodel.name2);
//                           },
//                           child: Text("Change the second name  "))
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ));
//   }
// }
//
// class DataModal extends ChangeNotifier {
//   String name = "First name1 ";
//   // String name2 = "First name2 ";
//
//   changeName() {
//     name = "first name1";
//     notifyListeners();
//   }
//
// // changeName2() {
// //   name2 = "Second name2";
// //   notifyListeners();
// // }
// }
//
// class DataModal2 extends ChangeNotifier {
//   // String name = "First name1 ";
//   String name2 = "First name2 ";
//
//   // changeName() {
//   //   name = "first name1";
//   //   notifyListeners();
//   // }
//
//   changeName2() {
//     name2 = "Second name2";
//     notifyListeners();
//   }
// }
//
// ///
//
// // proxy provider
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Multi Proivder "),
//           backgroundColor: Colors.green,
//         ),
//         body: MultiProvider(
//           providers: [
//             ChangeNotifierProvider(create: (context) {
//               return DataModal();
//             }),
//             ProxyProvider<DataModal, DataModal2>(
//                 update: (context, mydata, secondprovider) {
//               return DataModal2(mydata);
//             })
//           ],
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Consumer<DataModal>(
//                   builder: (context, datamodel, child) {
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [Text(datamodel.name)],
//                     );
//                   },
//                 ),
//               ),
//               Consumer<DataModal>(
//                 builder: (context, datamodel, child) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Text(datamodel.name2)],
//                   );
//                 },
//               ),
//               Consumer<DataModal>(
//                 builder: (context, datamodel, child) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextButton(
//                           onPressed: () {
//                             datamodel.changeName();
//
//                             print(datamodel.name);
//                           },
//                           child: Text("Change the first name  "))
//                     ],
//                   );
//                 },
//               ),
//               Consumer<DataModal2>(
//                 builder: (context, datamodel, child) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextButton(
//                           onPressed: () {
//                             datamodel.changeNameTwo();
//                           },
//                           child: Text("Change the second name  "))
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ));
//   }
// }
//
// class DataModal extends ChangeNotifier {
//   String name = "First name1 ";
//   String name2 = "First name2 ";
//
//   changeName() {
//     name = "first data modal name1";
//     notifyListeners();
//   }
//
//   changeName2() {
//     name2 = "Second data modal name2";
//     notifyListeners();
//   }
// }
//
// class DataModal2 {
//   DataModal dataModal;
//   DataModal2(this.dataModal);
//
//   void changeNameTwo() {
//     dataModal.changeName2();
//   }
// }
