import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/utils/bindings.dart';

import 'View/home_page.dart';

void main() => runApp(GetMaterialApp(
      // routes: {
      //   '/': (context) => HomePage(),
      // },

      getPages: [
        GetPage(
          name: "/",
          page: () => HomePage(),
          binding: bindings(),
        ),
      ],
      initialBinding: bindings(),
      initialRoute: '/',
    ));
