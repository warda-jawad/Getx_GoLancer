import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:helloworld/View/home_page.dart';
import 'package:helloworld/utils/bindings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: HomePage.new,
          binding: bindings(),
        ),
      ],
      initialBinding: bindings(),
      initialRoute: '/',
    );
  }
}
